cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.42.0"
  sha256 arm:   "8558a9ee61cb3c5ae6105e77e391395a8e12c280cdcb9928b5b96166135e2179",
         intel: "9f2b48c4b50559baea9704ab980664bc531843cef2b92dd79c49b88939dc8935"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
