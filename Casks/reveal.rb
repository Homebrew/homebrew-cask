cask "reveal" do
  version "38,17380"
  sha256 "fea39d9ef7dcac22e0843b4bc002061869f0f664b4136389ec1bdd08a18ac96d"

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
