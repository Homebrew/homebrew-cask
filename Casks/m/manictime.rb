cask "manictime" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  file_os = on_system_conditional macos: "osx", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  on_macos do
    version "2026.2.0.4"
    sha256 arm:   "f816da9f54fc18f6ccdba6af1f48af975cba69db75350b9208c53b0510868dcf",
           intel: "4911e504959192a7804ab722d2d522b65df3821c47b5df083738e9b07c5395fd"

    depends_on macos: :monterey

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
    version "2026.2.1.0"
    sha256 x86_64_linux: "02b4fe9fd3a558d279dd6de7d506af97f2d2b4173e85e210120ed5b4736a938a"

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
