cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "116.0.5"

  if Hardware::CPU.intel?
    sha256 "897fbf32a1baa934f838ac7b14a4ba1e6fea9275a1739aaacd77cbd66861b773"
  else
    sha256 "46f4d114cefd9e63b4177f73ed8fa8b7424f2aff8fa6e97bba2f12d716d95de7"
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
