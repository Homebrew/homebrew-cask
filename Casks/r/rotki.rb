cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.41.0"
  sha256 arm:   "f3c4be1e4c83a1c7cdc391a7cae8a87e1b0109fcb507f921313f55e60fc66d50",
         intel: "9196aae967b1f1bee0405937938642b20e4cd722c4c41f32ffe94898cab53e9f"

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
