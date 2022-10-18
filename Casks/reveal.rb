cask "reveal" do
  version "39a,17703"
  sha256 "404a0864b0c132b561647f51aeea1974b3c5f1dd38202422065c63cd41f50bd2"

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
