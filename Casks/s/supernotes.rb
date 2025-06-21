cask "supernotes" do
  arch arm: "-arm64"

  version "3.1.9"
  sha256 arm:   "42295f28be86ee2fc29db09024da1568c327709fce62b9be1ed5a549ba2ef691",
         intel: "e816cd5b0354c9f8de8d9eaae4f6b085cda0b2b5234ab69df10756cefca1a19a"

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
