cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "104.1.0"

  if Hardware::CPU.intel?
    sha256 "442b2649e388eeae644131c5cb4344c63166a147386ece179c42413ae6cc71f4"
  else
    sha256 "e5479dc1455daca530d99b67de8344c64ae5f1542f93dbcc96a8d44302f481ed"
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
