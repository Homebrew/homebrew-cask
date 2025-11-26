cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.11"
  sha256 arm:   "e147c56fcc94d23a02346c64dd057ae66312d40cf6734191038518ab9f378f82",
         intel: "bc58ddbff1e83da56e60a746705a68de2225e6f46df7c23779270f5f2edb78ce"

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
