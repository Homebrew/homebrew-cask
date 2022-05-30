cask "psst" do
  version :latest
  sha256 :no_check

  url "https://nightly.link/jpochyla/psst/workflows/build/master/Psst%2Dx64.dmg.zip",
    verified: "https://nightly.link/jpochyla/psst/"
  name "Psst"
  desc "Fast Spotify client with native GUI"
  homepage "https://github.com/jpochyla/psst"

  app "Psst.app"

  zap trash: [
    "~/Library/Caches/Psst",
    "~/Library/Application Support/Psst",
    "~/Library/Saved Application State/com.jpochyla.psst.savedState",
    "~/Library/HTTPStorages/com.jpochyla.psst",
    "~/Library/Caches/com.jpochyla.psst",
  ]
end
