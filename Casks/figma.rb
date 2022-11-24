cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.5.17"
  sha256 arm:   "0d2fd6243c3c08a6d51c990d6fb417ffa567141b9df2373280654f8197c172d1",
         intel: "f01ca01dab853d6c690fda91081d6fe4d2fe5245161042656dfd49d6dabd28b7"

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
