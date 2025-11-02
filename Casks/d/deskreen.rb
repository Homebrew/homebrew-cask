cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.0.5"
  sha256 arm:   "d56f6fafc4795943530811f9bd6bb4139061b007004422d5ee11209a83da2ce8",
         intel: "8ea303fcca771bbbca8c64c3504931330e6d72b9817908a100e390d6366a00b9"

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
