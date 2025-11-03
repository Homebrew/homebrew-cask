cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.0.9"
  sha256 arm:   "ae5957b4e3772b857d0d7529862dae9b3b6e1b7f365bdde3c2a65bc7c9631099",
         intel: "5c76a75c4f546ceec8ea105c3aaa80af96cf27a770d7643f848d914da3aecc1a"

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
