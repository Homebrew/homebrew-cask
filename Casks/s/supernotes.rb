cask "supernotes" do
  arch arm: "-arm64"

  version "3.1.8"
  sha256 arm:   "428a97f2f4d3742fbc62cf8a4b00180168cb16a43261ef493fae2b833e877ea0",
         intel: "2e59d76e21ce229ff52a03582e079072cd67e83892bc0a5826400c176da2b176"

  url "https://download.supernotes.app/Supernotes-#{version}#{arch}.dmg"
  name "Supernotes"
  desc "Collaborative note-taking app"
  homepage "https://supernotes.app/"

  livecheck do
    url "https://api.supernotes.app/v1"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Supernotes.app"

  zap trash: [
    "~/Library/Application Support/Supernotes",
    "~/Library/Logs/Supernotes",
    "~/Library/Preferences/app.supernotes.SupernotesDesktop.plist",
    "~/Library/Saved Application State/app.supernotes.SupernotesDesktop.savedState",
  ]
end
