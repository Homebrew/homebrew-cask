cask "lockpaw" do
  version "1.0.7"
  sha256 "c4af376d581b366f62832b8214ddfc04d5ba711e313d30e6d73b17ae7154525f"

  url "https://github.com/sorkila/lockpaw/releases/download/v#{version}/Lockpaw.dmg",
      verified: "github.com/sorkila/lockpaw/"
  name "Lockpaw"
  desc "Cover your screen while AI agents keep running"
  homepage "https://getlockpaw.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Lockpaw.app"

  zap trash: [
    "~/Library/Caches/com.eriknielsen.lockpaw",
    "~/Library/HTTPStorages/com.eriknielsen.lockpaw",
    "~/Library/Preferences/com.eriknielsen.lockpaw.plist",
  ]
end
