cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.16.13"
  sha256 arm:   "e1fceb438e70a027592822a25017ec634aead601f56433cc6d837d364761afbd",
         intel: "1c7701a09cb5fbc41e292fd97ef918e8634a8904184549bb536b6ad3be9b1df8"

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
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
