cask "droppoint" do
  arch arm: "-arm64-Apple-Silicon", intel: ""

  version "1.2.1"
  sha256 arm:   "f22e02bac2d82c0a0d8d85aa39bf86b0bb949b2ee91123de7775a11104f04626",
         intel: "370063285af13028027eb7ac98fa8b74e42a69f03c2822e2f44320c9f783eede"

  url "https://github.com/GameGodS3/DropPoint/releases/download/v#{version}/DropPoint-#{version}#{arch}.dmg",
      verified: "github.com/GameGodS3/DropPoint/"
  name "DropPoint"
  desc "Make drag-and-drop easier"
  homepage "https://droppoint.netlify.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "DropPoint.app"

  zap trash: [
    "~A/Library/Application Support/DropPoint",
    "~/Library/Saved Application State/com.gamegods3.droppoint.savedState",
    "~/Library/Preferences/com.gamegods3.droppoint.plist"
  ]
end
