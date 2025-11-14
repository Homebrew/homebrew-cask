cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.7"
  sha256 arm:   "4a8a70b7d5a25f099446b0e15866fd1ebce70bf4776da8dee55785cb91b3a15c",
         intel: "4c9ce5f1859a6143ae1e2573a5e92c47695a1c18b2ff387b0ce8e8d08aaae6fd"

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
