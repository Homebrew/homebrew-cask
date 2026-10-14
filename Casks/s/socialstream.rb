cask "socialstream" do
  arch arm: "arm64", intel: "x64"

  version "0.4.35"
  sha256 arm:   "be947de28621c0e96418af16399b7f56be0b01b68d661cb8bb6b8712a2bc2d65",
         intel: "7a105af9f03b2edfbdb91115dd9636fe257187d5ee33ed873b7ec0f8311a0f9c"

  url "https://github.com/steveseguin/social_stream/releases/download/v#{version}/socialstreamninja_mac_v#{version}_#{arch}.dmg"
  name "Social Stream"
  name "Social Stream Ninja"
  desc "Consolidate, control, and customise live social messaging streams"
  homepage "https://socialstream.ninja/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "socialstream.app"

  zap trash: [
    "~/Library/Application Support/socialstream",
    "~/Library/Preferences/socialstream.electron.plist",
    "~/Library/Saved Application State/socialstream.electron.savedState",
  ]
end
