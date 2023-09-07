cask "jetbrains-toolbox" do
  arch arm: "-arm64"

  version "2.0.3,2.0.3.17006"
  sha256 arm:   "0a8943a870b4d62574125e22011d65a268e3db0164af3ec81f504895884d1c81",
         intel: "50aa58e06423063299e6380061748adf97648a2767fc610026e1027d9dcc0c15"

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
