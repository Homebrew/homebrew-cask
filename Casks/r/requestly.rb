cask "requestly" do
  arch arm: "-arm64", intel: ""

  version "1.6.0"
  sha256 arm:   "5e17a3256ad4adb1a45bdd7f283b5aedc982b3aa01a053e4ec10a5e13c8a5172",
         intel: "f09e5b41b5b585c35fe93ba53f83b3b4257589ad2b44d6e7c3428cc16a9ee71d"

  url "https://github.com/requestly/requestly-desktop-app/releases/download/v#{version}/Requestly-#{version}#{arch}.dmg",
      verified: "github.com/requestly/requestly-desktop-app/"
  name "Requestly"
  desc "Open-Source platform for front-end developers that helps write, test & debug"
  homepage "https://requestly.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Requestly.app"

  zap trash: [
    "~/Library/Application Support/Requestly",
    "~/Library/Logs/Requestly",
    "~/Library/Preferences/io.requestly.beta.plist",
    "~/Library/Saved Application State/io.requestly.beta.savedState",
  ]
end
