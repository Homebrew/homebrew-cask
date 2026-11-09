cask "keepassxc" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "dmg", linux: "AppImage"

  version "2.8.0,2.8.0-1"
  sha256 arm:          "85f0e75e258ef513f0fc7f5bf470cad0943b7d7e8191b2171f9898ad32e62b9c",
         intel:        "28492c5535570020179150b2871b3c54abd032cbb8cdee2f1b3fa7c46cdba43e",
         x86_64_linux: "3ab1bfbb422272334b48057e6bfc984c839375d9a1cd9350c4ea62ca0b55ca5f"

  on_macos do
    depends_on macos: :monterey

    app "KeePassXC.app"
    binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"
    manpage "#{appdir}/KeePassXC.app/Contents/Resources/man/man1/keepassxc.1"
    manpage "#{appdir}/KeePassXC.app/Contents/Resources/man/man1/keepassxc-cli.1"

    uninstall quit: "org.keepassxc.keepassxc"

    zap trash: [
      "~/.keepassxc",
      "~/Library/Application Support/CrashReporter/KeePassXC_*.plist",
      "~/Library/Application Support/keepassxc",
      "~/Library/Caches/org.keepassx.keepassxc",
      "~/Library/Logs/DiagnosticReports/KeePassXC_*.crash",
      "~/Library/Preferences/keepassxc.keepassxc.plist",
      "~/Library/Preferences/org.keepassx.keepassxc.plist",
      "~/Library/Saved Application State/org.keepassx.keepassxc.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "KeePassXC-#{version.csv.second || version.csv.first}-#{arch}.AppImage", target: "KeePassXC.AppImage"

    zap trash: [
      "~/.cache/keepassxc",
      "~/.config/keepassxc",
    ]
  end

  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version.csv.first}/KeePassXC-#{version.csv.second || version.csv.first}-#{arch}.#{os}"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  # The tag version can differ from the filename version, so we include both in
  # the `version` when necessary.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/KeePassXC[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.#{os}$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        next match[1] if match[1] == match[2]

        "#{match[1]},#{match[2]}"
      end
    end
  end

  conflicts_with cask: [
    "keepassxc@beta",
    "keepassxc@snapshot",
  ]
end
