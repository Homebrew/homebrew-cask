cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.7.6"
  sha256 arm:   "0422dc5fd01bf3e2e23980d013a23fd53487b0319d2b592857e08ad227c417ba",
         intel: "792a620de02b925a08dfc964445e40bf04bf3e1ee173cf479ce09b71b2ce69cd"

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
