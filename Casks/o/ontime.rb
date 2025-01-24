cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.10.5"
  sha256 arm:   "f525cfd2ef7c07011997b05ca0faebef2f86b4cfb8c7c782902810b63c048a21",
         intel: "99c2e40acc97bee86f16e804e6213bee62235ff167975bd537c3fd3568b00171"

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
  depends_on macos: ">= :catalina"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
