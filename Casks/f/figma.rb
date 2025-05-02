cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.4.7"
  sha256 arm:   "8d8f2acc49d8f5f9818eccef4faf6f0eed2d524a779e508f47c36aadde9f2cad",
         intel: "c3d4a2bd3e893de6c48db6d7d2df8221946417317fae215ec74c1351ae2181a6"

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
  depends_on macos: ">= :sierra"

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
