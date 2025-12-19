cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.41.3"
  sha256 arm:   "f664ef3f2a7c4212af54ad6b9a8fcf67579f6f0c24d9b76eb3f60ef2094beae0",
         intel: "4312a2ab172e64c2493400788132fb10c31bbafa5055ef696cb1d2aa75a41c46"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
