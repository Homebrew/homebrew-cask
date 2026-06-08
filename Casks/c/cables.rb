cask "cables" do
  arch arm: "-arm64", intel: "-x64"

  version "0.10.7"
  sha256 arm:   "5d539ddbbec72633ec79baa89e4a974d69598eed758bebeb1bec97b82b37f813",
         intel: "45e104fb9b1e0b4669ce171cf0b4181b3bf0636a1c387c31adc70e64b55769e3"

  url "https://github.com/cables-gl/cables_electron/releases/download/v#{version}/cables-#{version}-mac#{arch}.dmg"
  name "Cables"
  desc "Visual programming tool"
  homepage "https://github.com/cables-gl/cables_electron"

  livecheck do
    url "https://dev.cables.gl/api/downloads/latest/"
    strategy :json do |json|
      json["name"]
    end
  end

  depends_on :macos

  app "cables.app"

  zap trash: [
    "~/Library/Application Support/cables_electron",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gl.cables.standalone.sfl*",
    "~/Library/Logs/cables_electron",
    "~/Library/Preferences/gl.cables.standalone.plist",
    "~/Library/Saved Application State/gl.cables.standalone.savedState",
  ]
end
