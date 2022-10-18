cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.4.2"
  sha256 arm:   "01cae1a5e96bee28a95d264ce7e31d676756aed6393b2ebe4caa0f0665927783",
         intel: "f296737e363b1c705a4b87cc29d8c38be267d377eac9a51a0fca4ca560b1c11b"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
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
