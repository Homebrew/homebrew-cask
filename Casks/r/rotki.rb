cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.36.1"
  sha256 arm:   "59135a65d43e2ed5b5cee79bbad577b8a5c8e37ce14ae902222db15f1e6f55da",
         intel: "0783f12400790896064bfa6edfb5e4fe65151476edd7c472a642c7420146e196"

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
