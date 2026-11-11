cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.44.3"
  sha256 arm:   "44b26ebfa37a6d29a41c4e2d140db7c2003f5e191675ee0b79847c4940b86db3",
         intel: "cabadbdbda9c97d4a8552a2b84b33cfb0247d4a8dd95a85e61238194c9b81ddf"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rotki.app.sfl*",
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
