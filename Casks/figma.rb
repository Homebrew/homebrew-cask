cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.3.7"
  sha256 arm:   "393284012fc2025cc42fb3718c0ded6b824cf52617041561a0ead15dd176b723",
         intel: "437d85d76a627f72831b1efb8f0f657ca48b6f1f264d49c1ebcf85ecd29fede7"

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
