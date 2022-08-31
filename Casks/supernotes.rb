cask "supernotes" do
  version "2.1.3"
  sha256 "7cde32752b71840aff9627e5b72b3242aa5c71544b343ecbabf80181184e65d8"

  url "https://download.supernotes.app/Supernotes-#{version}.dmg"
  name "Supernotes"
  desc "Collaborative note-taking app"
  homepage "https://supernotes.app/"

  livecheck do
    url "https://api.supernotes.app/v1/"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Supernotes.app"

  zap trash: [
    "~/Library/Application Support/Supernotes",
    "~/Library/Preferences/app.supernotes.SupernotesDesktop.plist",
    "~/Library/Saved Application State/app.supernotes.SupernotesDesktop.savedState",
  ]
end
