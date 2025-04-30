cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.4.7"
  sha256 arm:   "2442cb678da2a1d634ad4f5950d30bd894b784e569a27d8faadddf958eb97086",
         intel: "3e601af66042444d400fc5b3525ced52288440d54c0f269398bc1c1027718062"

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
