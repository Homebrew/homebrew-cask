cask "cables" do
  arch arm: "-arm64", intel: "-x64"

  version "0.10.4"
  sha256 arm:   "b3b9df35db15c294f967ab496a5f3858d0e5c9efd7e374c047c2e35e614df2b6",
         intel: "541413675e447a50122424185edb9d67ce5f85311631b66bfae41ca6d07067ab"

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
