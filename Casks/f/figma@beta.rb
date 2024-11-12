cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.7.0"
  sha256 arm:   "2cd7b12c327842f4313320f2c1fa3f57942aca0cb2fd9c49377e0c6703379047",
         intel: "f0581eeaba1144ef3562009f7e910889fc064bfffc3e6d11b8bff4514119b755"

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
