cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.34.0"
  sha256 arm:   "12bb7aa1cf8d5b568f925e7c772b946a29efaf66ae030026a1f113da528c8e39",
         intel: "af035eb8ee9dc6b09e9a4e77b939c2684d2e32b9cad2704d7a2a5822aad3ebab"

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
