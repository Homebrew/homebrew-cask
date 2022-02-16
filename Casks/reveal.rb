cask "reveal" do
  version "33,15756"
  sha256 "084b1efa476e55c90d45b0ea2193e3b8b9ac33dede4c49a6f8e84de476130bb8"

  url "https://download.revealapp.com/Reveal.app-#{version.csv.first}.zip"
  name "Reveal"
  desc "Powerful runtime view debugging for iOS developers"
  homepage "https://revealapp.com/"

  livecheck do
    url "https://revealapp.com/updates/index.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Reveal.app"

  zap trash: [
    "~/Library/Application Support/Reveal",
    "~/Library/Caches/com.ittybittyapps.Reveal2",
    "~/Library/Logs/com.ittybittyapps.Reveal2",
    "~/Library/Preferences/com.ittybittyapps.Reveal2.plist",
    "~/Library/Saved Application State/com.ittybittyapps.Reveal2.savedState",
    "/Users/Shared/Reveal",
  ]
end
