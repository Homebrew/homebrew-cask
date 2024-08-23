cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.3.2"
  sha256 arm:   "65fa321f505faf7eb55cb639c5104a502e65cd015437c02551d3c492a62a444e",
         intel: "a847964fe508bcf9b193fc00eaafb54d2d21f0f2bcd047418e046b7ec3d5ce5f"

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
