cask "psst" do
  version "0.1.0,20250519.152837"
  sha256 :no_check

  url "https://nightly.link/jpochyla/psst/workflows/build/main/Psst.dmg.zip",
      verified: "nightly.link/jpochyla/psst/workflows/build/main/"
  name "Psst"
  desc "Spotify client"
  homepage "https://github.com/jpochyla/psst/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Psst.app"

  zap trash: [
    "~/Library/Application Support/Psst",
    "~/Library/Caches/com.jpochyla.psst",
    "~/Library/Caches/Psst",
    "~/Library/HTTPStorages/com.jpochyla.psst",
    "~/Library/Saved Application State/com.jpochyla.psst.savedState",
  ]
end
