cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "99ddd60294d67e025bbb482bffe318c05b1dff49eb3de3ca21c767b8ab69aad1",
         intel: "2a0698c9244fa91f62399fec525fb3149161cf32e3cc1f1d498d57005ce42744"

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
