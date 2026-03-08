cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.2.14"
  sha256 arm:   "5ec3df40a17ce97bbc0f0aca96de76b9f2f6ff050b5df9c986531e16b11e3942",
         intel: "c3e6786028142f59428634b97cb2f0e51a9a1f1f97c73a0fb9017a0ebf80ff07"

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
