cask "supernotes" do
  arch arm: "-arm64"

  version "3.1.8"
  sha256 arm:   "078b0a001b46dd3ca8da02079adae4503d5ec1efabfc67d1fe3594aa1f37acbb",
         intel: "fafc64bca6f2f8b78549c731933da917e0c1bfd62b17e460ce93727de34ef151"

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
