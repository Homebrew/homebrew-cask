cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.14.6"
  sha256 arm:   "428c843d6b2493da7942b7ce74d768830bda8e1051b5e27b76be83770084e3ad",
         intel: "dca06f31e9369c30a9d4641d5fc086553aab5e6e41fd966a34ab043a74750f5b"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :json do |json|
      json["version"]
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
