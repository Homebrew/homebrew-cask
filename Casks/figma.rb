cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "114.2.1"

  if Hardware::CPU.intel?
    sha256 "11e1573834d4a50bb5c89db08ebe26f17636f50ad88c0b58717fa5935618e7dd"
  else
    sha256 "e5f1a83485456bd4064f1976955b98f7bd143a2cb8b2b90f0085745a6684020e"
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
