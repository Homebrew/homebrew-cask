cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.4"
  sha256 arm:   "7c7debf8fbac7ad48ea5d67a13481181c8a63cad37ab238db05a51a08fa61e48",
         intel: "67a44b949d8e6d66c53ccfd63d635c6767749813041d9ede069a0a0da4d12929"

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
