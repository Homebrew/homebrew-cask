cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.2"
  sha256 arm:   "6f988a54f242a1ac1ead2474dd01bfe34b870329206f04fdc7514a5b9503a8f4",
         intel: "110f23bace83435b19b626bf49281782c2fb4d2cebbb9f9ca292b4d73da68dd9"

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

  depends_on macos: :monterey

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
