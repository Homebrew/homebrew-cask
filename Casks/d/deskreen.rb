cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.6"
  sha256 arm:   "0951cdbe0550b68437b2b07aa71f9e99ae953bb9084175bc5753dd47a015f92f",
         intel: "092e72a64bc8c80d375ba1a8b68c510206fcbb83e074d5f5bdaf4cf8ba275773"

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
