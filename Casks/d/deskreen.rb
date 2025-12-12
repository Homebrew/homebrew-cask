cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.18"
  sha256 arm:   "83cb7b8839e928dcc192aa687ebbec44c08485623098894a5dc9826b81653783",
         intel: "e8e0cd6f9e3387bc4fde1dd8fa21977380c90bf21d99d77356b4bf9188b0d8b0"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-ce-#{version}-#{arch}.dmg",
      verified: "github.com/pavlobu/deskreen/"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Deskreen CE.app"

  zap trash: [
    "~/Library/Application Support/Deskreen",
    "~/Library/Logs/Deskreen",
    "~/Library/Preferences/com.pavlobu.Deskreen.plist",
    "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
  ]
end
