cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.3.8"
  sha256 arm:   "de72e8c614dd4418d4d52abaec9df1d49c6d3a1dca1ddf12ea2f298144f319aa",
         intel: "0623e4f72ee2a829559f2a61dc947994136b648474e3b070b9c36df400d50b86"

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
