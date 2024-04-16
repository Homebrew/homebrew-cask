cask "jetbrains-toolbox" do
  arch arm: "-arm64"

  version "2.3,2.3.0.30876"
  sha256 arm:   "cab0bc327ecd1529c7a42165ec42195344aae19857df9ca1aa67931e681b7744",
         intel: "bbcaaf48a0e206ab79e90e51ee3b29b9092332ef3f3a98fcdba941e586da026e"

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.csv.second}#{arch}.dmg"
  name "JetBrains Toolbox"
  desc "JetBrains tools manager"
  homepage "https://www.jetbrains.com/toolbox-app/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release"
    strategy :json do |json|
      json["TBA"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "JetBrains Toolbox.app"

  uninstall launchctl: "com.jetbrains.toolbox",
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
