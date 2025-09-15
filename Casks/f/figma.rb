cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.7.5"
  sha256 arm:   "0d9dd5f1dd89e999eae9d8b2731ab37da795d92c4b071b13f24b5528a39c243b",
         intel: "d629fa2919baf08eef3fb7fbee48d9f3384ca8a1f8630ce6f1009bf1faef4992"

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
