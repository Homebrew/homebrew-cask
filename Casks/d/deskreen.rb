cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "deeb4101ba3dccc0c5d1fae52db8416d203af98944b1e14cc9640ecaeb9e76c6",
         intel: "f7119e717ffa69dc848e99f10fa47b6c5db3acc7013b91e681ff11288d69991f"

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
