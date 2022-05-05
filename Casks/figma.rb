cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "114.4.0"

  if Hardware::CPU.intel?
    sha256 "dc6d3b506c0d71b336e50714d0cbdce560c897cbf050a6e2e83931008441063f"
  else
    sha256 "7927db2b00cd8963dd868651ba625fcccc329c590cc15e676666e635892e036b"
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
