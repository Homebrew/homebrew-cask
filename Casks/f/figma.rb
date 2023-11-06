cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.14.9"
  sha256 arm:   "c236d739b87e06fc8526ad3f974b4495a3504c03b111485d6dc84c40c8c72fbd",
         intel: "22a107fe9b43e0533815340d15be3e98f8353bc388c45f304fe359c2c13c372c"

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
