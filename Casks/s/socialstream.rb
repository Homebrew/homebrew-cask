cask "socialstream" do
  arch arm: "arm64", intel: "x64"

  version "0.3.82"
  sha256 arm:   "030a0408dbe18a6cc43d09441e479cee84cc2ecc4b54ae0811fdde1e5864301d",
         intel: "66042ea511c21a8ef26e9e8f084b4349254dfccc0954ee380e1528b67ac319ab"

  url "https://github.com/steveseguin/social_stream/releases/download/#{version}/socialstreamninja_mac_v#{version}_#{arch}.dmg",
      verified: "github.com/steveseguin/social_stream/"
  name "Social Stream"
  name "Social Stream Ninja"
  desc "Consolidate, control, and customise live social messaging streams"
  homepage "https://socialstream.ninja/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "socialstream.app"

  zap trash: [
    "~/Library/Application Support/socialstream",
    "~/Library/Preferences/socialstream.electron.plist",
    "~/Library/Saved Application State/socialstream.electron.savedState",
  ]
end
