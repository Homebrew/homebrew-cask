cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "108.1.0"

  if Hardware::CPU.intel?
    sha256 "a91e1ca5073f3d60f2a9f76ab805ca7e90c6c8c68b079c53f0c0ebd604b05710"
  else
    sha256 "9920d4d9a4041f0c0b354b3bac0fa0d738b5dd441326dd114785e6b58de7142f"
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
