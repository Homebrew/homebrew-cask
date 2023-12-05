cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "a74ec6088c3c9cea7e6990d441a20d750dcffff75b2b9725ea319066656c429a",
         intel: "01b8757f8276a5d6cd6a3b6caedb0a5d8f51f0f50bd99b9d6785e0aa148f011b"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
