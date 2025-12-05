cask "jetbrains-toolbox" do
  arch arm: "-arm64"

  version "3.1.2,3.1.2.64642"
  sha256 arm:   "042aaaa3eecae7b67284dbfa0a26bd687b30ea0153c5c1670aa3b9cc0bc6c07e",
         intel: "1430ed8faf2fd9b29d3d1d65bf868ca5803b535ec846b55199ee8f567a05d093"

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.csv.second}#{arch}.dmg"
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
