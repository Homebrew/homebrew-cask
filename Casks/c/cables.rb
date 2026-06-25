cask "cables" do
  arch arm: "-arm64", intel: "-x64"

  version "0.11.0"
  sha256 arm:   "babf02969076034c1ed67a7d23fe35490d9b6c19eb4a3dbf3c015a18e5c019c5",
         intel: "d16f7d00d1ad521f22d2df53b941b5030f60c68c0c754a0cfd5c4df5b2c328a0"

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
