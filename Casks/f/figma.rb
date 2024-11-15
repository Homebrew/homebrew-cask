cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.5.7"
  sha256 arm:   "63cbf7df382f7d44e2517f5dc920945a1eeeb3eb8a5ce3e61b1df7e7ac551f44",
         intel: "e2468e73c3c90b07629cb58760aad21d41dfee31ab3fe29677010f2b01962b28"

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
