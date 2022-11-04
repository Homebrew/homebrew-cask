cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.5.15"
  sha256 arm:   "4b97c019d6edbe9d609beac2c070e667b6e8d73552a41001de705e209d954eac",
         intel: "6e657feb071257a781be86ebbb8be1e6eb5d5b12d7a053476f456753caa05cf1"

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
