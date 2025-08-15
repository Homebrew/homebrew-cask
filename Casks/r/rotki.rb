cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.40.0"
  sha256 arm:   "92d596aeb4d0cd79d22362f726a20fec1d95c4d2fe22cbb17dde61d8877fa4b2",
         intel: "77a6f8252d7c151eee8fb3c9e355ec9e46561ed86f7471d67054d222d0343088"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
