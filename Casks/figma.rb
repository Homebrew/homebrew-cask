cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "114.6.0"

  if Hardware::CPU.intel?
    sha256 "6653c2aa92fec8a28ebaa01b81e78c6ef23ffc795c8de177cf4fc06025a45623"
  else
    sha256 "33f726985f4ce5c9fd4f768ddb998b8bb7764d400662c8aff81ecd7dcbb32ade"
  end

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
