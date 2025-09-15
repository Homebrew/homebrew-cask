cask "cables" do
  arch arm: "-arm64", intel: "-x64"

  version "0.7.1"
  sha256 arm:   "abdf67300313000753ddfa2f6758d14b060e6ae3d19bb55585ace271e8a753a1",
         intel: "bf457b473ae4f15ad5d2af77ab1268514485e9082c68aa8f6a0baa1e5b1dc9c7"

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

  app "cables-#{version}.app"

  zap trash: [
    "~/Library/Application Support/cables_electron",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gl.cables.standalone.sfl*",
    "~/Library/Logs/cables_electron",
    "~/Library/Preferences/gl.cables.standalone.plist",
    "~/Library/Saved Application State/gl.cables.standalone.savedState",
  ]
end
