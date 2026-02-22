cask "brood" do
  version "0.2.3"
  sha256 "3be11616ee6759c3bfb398417b3081f547995ff5584b8e9b9085723a1cda70bf"

  url "https://github.com/kevinshowkat/brood/releases/download/v#{version}/Brood_#{version}_universal.dmg"
  name "Brood"
  desc "Reference-first AI image editing desktop for developers"
  homepage "https://github.com/kevinshowkat/brood"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Brood.app"

  zap trash: [
    "~/.brood",
    "~/Library/Caches/com.brood.app",
    "~/Library/Preferences/com.brood.app.plist",
    "~/Library/Saved Application State/com.brood.app.savedState",
  ]
end
