cask "manictime" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"

  file_os = on_system_conditional macos: "osx", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "2026.2.0.4"

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

  on_macos do
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
    sha256 x86_64_linux: "9ebae5fab3095bcecf674b00b0490e887575e8da339416fee72d304ee73737b5"

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

    zap trash: [
      "~/.config/manictime",
      "~/.local/share/manictime",
    ]

    caveats <<~EOS
      ManicTime on Linux is a tracker only. It collects computer usage data
      and sends it to ManicTime Cloud or ManicTime Server for viewing reports.

      To start automatically at login, create a systemd user service or add
      "manictime" to your desktop environment's autostart configuration.
    EOS
  end
end
