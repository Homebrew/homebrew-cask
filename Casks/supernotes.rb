cask "supernotes" do
  version "2.2.2"
  sha256 "fa6da125617b4980dbe5382e7d7ff3ad897260f2cecdc3c72b92598e3cdfcd49"

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
