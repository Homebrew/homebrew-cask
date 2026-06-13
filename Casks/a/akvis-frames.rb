cask "akvis-frames" do
  version "8.1"
  sha256 :no_check

  url "https://akvis-dl.sfo2.cdn.digitaloceanspaces.com/akvis-frames-app.dmg",
      verified: "akvis-dl.sfo2.cdn.digitaloceanspaces.com/"
  name "AKVIS Frames"
  desc "Adds decorative frames and edge effects to photos"
  homepage "https://akvis.com/en/frames/index.php"

  livecheck do
    url "https://akvis.com/en/frames/index.php"
    regex(/Frames (\d+(?:\.\d+)+)/i)
    strategy :page_match
  end

  depends_on macos: :catalina

  app "AKVIS Frames.app"

  zap trash: [
    "~/Library/Caches/com.akvis.Frames",
    "~/Library/HTTPStorages/com.akvis.Frames",
    "~/Library/Preferences/com.akvis.Frames.plist",
    "~/Library/Saved Application State/com.akvis.Frames.savedState",
  ]
end
