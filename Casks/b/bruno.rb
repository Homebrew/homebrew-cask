cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.9.1"
  sha256 arm:   "ea9346586852257270244adf4b975af90a99da6313a136bb0e803add34db41a8",
         intel: "58947e9ed989c2967244a813a7b397c175ab0182f018637e52e3305884ab9de1"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
