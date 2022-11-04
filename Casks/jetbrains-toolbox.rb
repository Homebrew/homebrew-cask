cask "jetbrains-toolbox" do
  arch arm: "-arm64"

  version "1.26.5,1.26.5.13419"
  sha256 arm:   "7320815edc66d35f50c110b11266bed6190250201bb37f2413e90b56307686c5",
         intel: "2939125b9e800f43e5e94ef7deb8b432302c6515026caa0271beb723f8c49cec"

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.csv.second}#{arch}.dmg"
  name "JetBrains Toolbox"
  desc "JetBrains tools manager"
  homepage "https://www.jetbrains.com/toolbox-app/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["TBA"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "JetBrains Toolbox.app"

  uninstall signal:    ["TERM", "com.jetbrains.toolbox"],
            launchctl: "com.jetbrains.toolbox"

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
