cask "cozy-drive" do
  arch arm: "-arm64"

  version "3.42.0"
  sha256 arm:   "7815a2757937ac904b4d854996ed815affab62d474a69df3940e1c6a0502a7d8",
         intel: "f69f9575a842f473d22a3669ff418f729a2ca092c109983ba084dddad1d4648b"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Cozy-Drive-#{version}#{arch}.dmg",
      verified: "github.com/cozy-labs/cozy-desktop/"
  name "Cozy Drive"
  desc "File synchronisation for Cozy Cloud"
  homepage "https://cozy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Cozy Drive.app"

  zap trash: [
    "~/.cozy-desktop",
    "~/Library/Application Support/Cozy Drive",
    "~/Library/Preferences/io.cozy.desktop.plist",
    "~/Library/Saved Application State/io.cozy.desktop.savedState",
  ]
end
