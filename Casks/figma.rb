cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "114.6.1"

  if Hardware::CPU.intel?
    sha256 "fedb63037b4f7cbebaafb3a3ed969b8339c5739705a7a87fdd0a8fb4b4ec2dbb"
  else
    sha256 "7767e1c93636fd5e8ae73bbd3132b8ab0d4daccb66a24a6faa4b7c1533b7162a"
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
