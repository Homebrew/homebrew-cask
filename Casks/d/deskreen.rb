cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.2.12"
  sha256 arm:   "e68f9530f7053216578ab915d761e8017ded2fb1b2b5cacd1835c48403b50e8d",
         intel: "5aa2c9fdb133b302fd3d6c5b7f88d1546c2fc3146bf54c7bc221d1d32f0c8389"

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
