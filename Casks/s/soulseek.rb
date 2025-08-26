cask "soulseek" do
  version "2024-6-30"
  sha256 "43a788bf49e50f7a1d23bd4b9df89db5835edf431328b88f502619a7a5818cf1"

  url "https://f004.backblazeb2.com/file/SoulseekQt/SoulseekQt-#{version}.dmg",
      verified: "f004.backblazeb2.com/file/SoulseekQt/"
  name "Soulseek"
  desc "File sharing network"
  homepage "https://www.slsknet.org/"

  livecheck do
    url "https://www.slsknet.org/news/node/1"
    regex(/href=.*?SoulseekQt[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "SoulseekQt.app"

  zap trash: [
    "~/.SoulseekQt",
    "~/Library/Saved Application State/com.yourcompany.SoulseekQt.savedState",
  ]
end
