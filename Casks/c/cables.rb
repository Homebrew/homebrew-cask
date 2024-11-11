cask "cables" do
  arch arm: "-arm64", intel: "-x64"

  version "0.4.3"
  sha256 arm:   "394eac9b49dbb2bd31593f63cbe0da2a1aeb4693d43a57c70c44ce9a74c8ee51",
         intel: "d8f11e7335c01f69c4b520e6eaf34d2f34920b48fdc77ede27a2af22352fcb52"

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

  depends_on macos: ">= :catalina"

  app "cables-#{version}.app"

  zap trash: [
    "~/Library/Application Support/cables_electron",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gl.cables.standalone.sfl*",
    "~/Library/Logs/cables_electron",
    "~/Library/Preferences/gl.cables.standalone.plist",
    "~/Library/Saved Application State/gl.cables.standalone.savedState",
  ]
end
