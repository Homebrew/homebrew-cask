cask "supernotes" do
  version "2.1.2"
  sha256 "693f83a667d9265fbdc18fd5ffe00605c14daa3efc0b65821221bc98870172e2"

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
