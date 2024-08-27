cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.4.3"
  sha256 arm:   "5f0b2053a7494b41417d18e9672e139502d442833050a6a3c7e036f8f7790962",
         intel: "f32c4f14458d78d9d5406f67ad8c1cd8d461a217c72e7937da1c2e1194f18c69"

  url "https://desktop.figma.com/#{arch}/beta/FigmaBeta-#{version}.zip"
  name "Figma Beta"
  desc "Collaborative team software"
  homepage "https://figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/beta/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :sierra"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
