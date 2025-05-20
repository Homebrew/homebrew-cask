cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.38.4"
  sha256 arm:   "599921bc9b857a0f4dfc89500a0d569dc32e5ff9b140ab50ddc067f6b7daef89",
         intel: "a0844042ad8af934651b20a3bd292b525cc259bcdef02ec7b7ccd8f72b5fcbb3"

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
