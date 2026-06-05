cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.8.0"
  sha256 arm:   "02d8ee01ac86877e571e11b3223e60312937ef55fd22c82ecbaccc6d335aed64",
         intel: "231cff6c049fa0f99429ac20a3149d0d095893d10939fdf58b1c4f2cc44dcb87"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
