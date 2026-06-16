cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.6"
  sha256 arm:   "0bf52f5a71378430a5f1517695e78c931326fb06653462bb7c4ddfddecfe701a",
         intel: "b0e9b2db65d463deb77e38b45e1b25e69dd7ddbf1597ea46fd525bde3a7d00f4"

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
