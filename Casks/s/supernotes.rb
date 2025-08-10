cask "supernotes" do
  arch arm: "-arm64"

  version "3.2.0"
  sha256 arm:   "783243f63257274550d8c3ad6c24c06d93b56352eb983403455e2c7522387fff",
         intel: "e3ce6088a9db32fecccdc5538070d26f2448c07a1f2e4688899b0cf8c006f715"

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
