cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.7.3"
  sha256 arm:   "ca0e98f4ea4f3a9a099cde393d9f91e0d1a5cdd88731de6f2fba8c498e02eabd",
         intel: "14f39bdb863da8df21c611a1e357edcd727122b0f0b64e06db75cb3fde0311e0"

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
