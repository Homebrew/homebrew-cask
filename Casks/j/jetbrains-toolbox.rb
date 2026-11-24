cask "jetbrains-toolbox" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "tar.gz"

  version "3.9.2,3.9.2.89815"
  sha256 arm:          "aadcca519831d9aa18060ad9c89984fc7d69196a9f13f1e7dc17e43c708e0ec2",
         intel:        "72de2e140ee0905f1fc2fae3359e3c1f78655a4d8c587784de6fd7f8bd8ffef6",
         arm64_linux:  "d5a973a17b364a1aa83ac863bc98b6be6a7f0bd2a3f48ea82c9171540b4ce3f5",
         x86_64_linux: "5feaea5e5d7cdddfa020536ef85d97854576e67eaa8590f2e31dcde64b92a5f0"

  on_macos do
    app "JetBrains Toolbox.app"

    uninstall launchctl: [
                "application.com.jetbrains.app.daemon.*",
                "com.jetbrains.toolbox",
              ],
              quit:      "com.jetbrains.toolbox",
              signal:    ["TERM", "com.jetbrains.toolbox"]

    zap trash: [
          "~/Library/Application Support/JetBrains/Toolbox",
          "~/Library/Caches/JetBrains/Toolbox",
          "~/Library/Logs/JetBrains/Toolbox",
          "~/Library/Preferences/com.jetbrains.toolbox.plist",
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

  auto_updates true
end
