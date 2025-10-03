cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.8.9"
  sha256 arm:   "7a431c48c7f49c5ec1723387f069ee928a17bbafb68901183006bdfe14b76469",
         intel: "75855bcee5a37f7ffd9bd50383c53dddb747cdc8af22ca8f3203c1c278294e20"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json?localVersion=#{version}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
