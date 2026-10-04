cask "jetbrains-toolbox" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "tar.gz"

  version "3.8.1,3.8.1.88030"
  sha256 arm:          "2f07b78168913476cdae4ea1c1fa74bb075a4bcb70c598a85de099785a6e9c73",
         intel:        "a7ddaaaa0c01429ac64eeac3b30531104b79faf9402fa1429068b3f4a946659f",
         arm64_linux:  "47dd2a112b2e169a072de01abc482a6a6341fcf8ce14acb62f7713963e78833e",
         x86_64_linux: "25cbe2ad027f5a5749bf8d8ae7c2215a8665403cfe94ff5d05cd48b25daac345"

  on_macos do
    auto_updates true

    app "JetBrains Toolbox.app"

    uninstall launchctl: "com.jetbrains.toolbox",
              quit:      "com.jetbrains.toolbox",
              signal:    ["TERM", "com.jetbrains.toolbox"]

    zap trash: [
          "~/Library/Application Support/JetBrains/Toolbox",
          "~/Library/Caches/JetBrains/Toolbox",
          "~/Library/Logs/JetBrains/Toolbox",
          "~/Library/Preferences/com.jetbrains.toolbox.renderer.plist",
          "~/Library/Saved Application State/com.jetbrains.toolbox.savedState",
        ],
        rmdir: [
          "~/Library/Application Support/JetBrains",
          "~/Library/Caches/JetBrains",
          "~/Library/Logs/JetBrains",
        ]
  end
  on_linux do
    binary "jetbrains-toolbox-#{version.csv.second}#{arch}/bin/jetbrains-toolbox"

    zap trash: [
          "~/.cache/JetBrains/Toolbox",
          "~/.config/autostart/jetbrains-toolbox.desktop",
          "~/.local/share/applications/jetbrains-toolbox.desktop",
          "~/.local/share/icons/hicolor/scalable/apps/jetbrains-toolbox.svg",
          "~/.local/share/JetBrains/Toolbox",
        ],
        rmdir: [
          "~/.cache/JetBrains",
          "~/.local/share/JetBrains",
        ]
  end

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.csv.second}#{arch}.#{os}"
  name "JetBrains Toolbox"
  desc "JetBrains tools manager"
  homepage "https://www.jetbrains.com/toolbox-app/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release"
    strategy :json do |json|
      json["TBA"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end
end
