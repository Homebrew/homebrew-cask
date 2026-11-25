cask "manictime" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  file_os = on_system_conditional macos: "osx", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  sha256 arm:          "84e11b1f5a1a66293ae4751ac7e6fdd574438b9a42cf30e6c18fd2b748b714ce",
         intel:        "db08cbbb2aed80aaaff0c03c4a791af73a43a792af7878e389ad38eeaca4fcd9",
         x86_64_linux: "718359b39f520f9c777815a3b9ffd52b78e7b1b007652fb1e6e6dc7ba505ba68"

  on_macos do
    version "2026.3.0.2"

    depends_on macos: :sonoma

    pkg "ManicTime.pkg"

    uninstall pkgutil: "com.finkit.manictime.tracker"

    zap trash: [
      "~/.local/share/manictime",
      "~/Library/Application Support/com.apple.sharedfilelist/*/com.finkit.manictime.tracker.sfl*",
      "~/Library/Application Support/ManicTime",
      "~/Library/LaunchAgents/com.ManicTime.mac.start.plist",
      "~/Library/Preferences/com.finkit.manictime.tracker.plist",
    ]
  end
  on_linux do
    version "2026.3.0.1"

    depends_on arch: :x86_64
    depends_on formula: %w[
      gcc
      glibc
      gss-ntlmssp
      krb5
      libayatana-appindicator
      libx11
      libxscrnsaver
    ]

    binary "manictime/ManicTime", target: "manictime"
    manpage "manictime/manictime.1.gz"

    # ManicTime's `.tar.gz` package includes a `ManicTimeTrackerSettings.json`
    # that triggers portable mode, instructing the tracker to write its data
    # next to the binary (therefore, inside the versioned Caskroom)
    # Removing it lets the tracker fall back to its default `~/.config/manictime`,
    # matching the behavior of the upstream `.deb`/`.rpm` packages.
    preflight_steps do
      remove "manictime/ManicTimeTrackerSettings.json", base: :staged_path
    end

    zap trash: [
      "~/.config/manictime",
      "~/.local/share/manictime",
    ]
  end

  url "https://cdn.manictime.com/setup/#{os}/v#{version.dots_to_underscores}/manictime-#{version}-#{file_os}-#{arch}.#{file_ext}"
  name "ManicTime"
  desc "Time tracker that automatically collects computer usage data"
  homepage "https://www.manictime.com/"

  # The download page includes a link to a beta version, so instead of
  # mapping over the versions present on the page, we return the first match
  # which is the latest stable version
  livecheck do
    url "https://www.manictime.com/download/#{os}"
    regex(/manictime[._-]v?(\d+(?:\.\d+)+)[._-]#{file_os}[._-]#{arch}\.#{file_ext}/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1]
    end
  end
end
