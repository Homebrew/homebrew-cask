cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.6.3"
  sha256 arm:   "4ebf3e324a5c87aa6464b499cdd35f5cb1281ddb09a03e92f3c65a8836585918",
         intel: "a1b03c1924084feaa715b022c2323ff4c86a6cb094284baf6f65d4bffd96aa89"

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
