cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.2"
  sha256 arm:   "44769396764718133f932983e3128c4d5941d407883009399d5fcbc41a6349d2",
         intel: "d857e755d7578b94af78076a4d7f81ba65291763707c93470fb71ed7b68924b6"

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
