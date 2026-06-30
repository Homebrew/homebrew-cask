cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.12"
  sha256 arm:   "aefac0a4f39fa82f7552d1b044f1d71a931f7d4ebf699249399bd5085f662c65",
         intel: "6f26b3081ff671ab2e565eb02e7f0121782ae97a3556aba4cac1c3b20734b9ab"

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
  depends_on :macos

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
