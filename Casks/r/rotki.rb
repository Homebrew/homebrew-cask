cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.33.0"
  sha256 arm:   "14c094ecd42ba7b48c9c5e133d27e81ea687bcacb1996b362bf24862d0f840e1",
         intel: "88f414943b0c40eaeedc835afb186f9c1add13b629342b54480dafd0ee4802a7"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
