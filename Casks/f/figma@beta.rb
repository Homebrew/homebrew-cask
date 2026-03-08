cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.2.3"
  sha256 arm:   "1acb1f90aeaaec093265d51660eb15182abf29c2df0b039b16bd2ffe1a2861f4",
         intel: "2304db0f486589efd8199551ed826f0dd62a15cd3938e2fcb97bcc7a29a7a25d"

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

  depends_on macos: ">= :monterey"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
