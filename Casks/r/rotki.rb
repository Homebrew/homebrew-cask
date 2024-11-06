cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.36.0"
  sha256 arm:   "a1abfe1f0fca934066e493ad4546d4609ba1a02bb0bf26c1ab033c993537a588",
         intel: "b23ab41a12f6a74954ce12e888fff75b2466f967f0680b8166db6d99c5333bec"

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
