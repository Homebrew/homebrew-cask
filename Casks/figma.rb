cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.2.4"
  sha256 arm:   "4a46d7abd0237626641453b9a126727868a8c55e16eeac18b16022ec4fcecac6",
         intel: "60e3db6ef10e328577072338add87fd7a3480604ff1da82935de59557e48ad65"

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
