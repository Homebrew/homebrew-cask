cask "socialstream" do
  arch arm: "arm64", intel: "x64"

  version "0.3.125"
  sha256 arm:   "46e8195c8a91a1959b0ef4830d07392c5a4a6953b079c50a6214aca1f613599f",
         intel: "0366079691c461c130ace7806d9fe6e590eef9f6fc007170c0bc54b414865384"

  url "https://github.com/steveseguin/social_stream/releases/download/v#{version}/socialstreamninja_mac_v#{version}_#{arch}.dmg",
      verified: "github.com/steveseguin/social_stream/"
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
