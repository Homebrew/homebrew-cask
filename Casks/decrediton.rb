cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.3"

  on_intel do
    sha256 "106a0d417163c9c247b5a658e7dda691290af8b9651dcecb99f83cfcda5683a8"
  end
  on_arm do
    sha256 "b29286210fe17fe159b5ccb24f0be572da9235acc6b9093356091d52a218848d"
  end

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "Wallet GUI for decred autonomous digital currency"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
