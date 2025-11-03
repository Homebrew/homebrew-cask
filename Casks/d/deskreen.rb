cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.0.12"
  sha256 arm:   "a76fd7a5b811834bde7891d36d92d75291478c4e8cbcd5f7861f844dc7f6609a",
         intel: "95b672c922fa92a9fe280fd323c131a489eee2f602f069664a7db99156be37be"

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
