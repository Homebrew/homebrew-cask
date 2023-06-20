cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.10.8"
  sha256 arm:   "28dbfef63fe7f311fe602d70e1bd0e3704155e062c9dbd82f464006a0ab4b571",
         intel: "7e05cc38b3b007484b116af3c9cb40382f61bb4877c154bb9c8256cc4917226d"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
