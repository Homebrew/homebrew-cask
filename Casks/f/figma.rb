cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.8.8"
  sha256 arm:   "4b4e57f6c6405b09daaa8cd8d9c9ca1da398cd4ab7d7d51ae17eb2bf3c858e44",
         intel: "5b062d5c795d58d1a955f2eea7906822800c4cdb07ea2277ac0411d5a8fc4d72"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json?localVersion=#{version}"
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
