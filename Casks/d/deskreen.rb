cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.19"
  sha256 arm:   "b7ebfa2685803a625c25db391ddc603b3a50384b9e864fbfe308a16883f26f61",
         intel: "07e861c4d14b1216adcf588670de02a1844b268999c7c0b4f28c8bda0a323464"

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
