cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.4"
  sha256 arm:   "b33310c4aeb63dac49945010f48ed4b67744fe5f4970c8890de72a3ee64cddb8",
         intel: "239c3568d016f0eca7a9b47ee81d1c31a17407198ee5351be3d6279863d7120d"

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
