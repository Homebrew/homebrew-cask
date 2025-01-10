cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.37.1"
  sha256 arm:   "ccd6e41f58d8fd1b89ea1dd804480190f7ad0e9de061a421cfac54d1e0ea4d89",
         intel: "4b688ee3c76cc7834cadfa626db5b2541fe1bfcf22be6f1f1d3b0b40e8caaea1"

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
