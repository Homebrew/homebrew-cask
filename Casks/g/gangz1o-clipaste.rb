cask "gangz1o-clipaste" do
  version "1.0.5"
  sha256 "5e356b7d467d46fd206cd237b602b77780c5e7a51a676e4c15d29a14423c1301"

  url "https://github.com/gangz1o/Clipaste/releases/download/v#{version}/Clipaste-v#{version}.dmg",
      verified: "github.com/gangz1o/Clipaste/"
  name "Clipaste"
  desc "Native clipboard manager"
  homepage "https://github.com/gangz1o/Clipaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Clipaste.app"

  zap trash: [
    "~/Library/Application Support/com.gangz1o.clipaste",
    "~/Library/Caches/com.gangz1o.clipaste",
    "~/Library/Preferences/com.gangz1o.clipaste.plist",
    "~/Library/Saved Application State/com.gangz1o.clipaste.savedState",
  ]
end
