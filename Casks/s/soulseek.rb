cask "soulseek" do
  version "2026-4-30"
  sha256 "72fa8c2b91c9eda39c765485c09995299a17834bf62862e37e4d6353bc18f1b7"

  url "https://f004.backblazeb2.com/file/SoulseekQt/SoulseekQt-#{version}.dmg",
      verified: "f004.backblazeb2.com/file/SoulseekQt/"
  name "Soulseek"
  desc "File sharing network"
  homepage "https://www.slsknet.org/"

  livecheck do
    url "https://www.slsknet.org/news/node/1"
    regex(/href=.*?SoulseekQt[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: :ventura

  app "SoulseekQt.app"

  zap trash: [
    "~/.SoulseekQt",
    "~/Library/Saved Application State/com.yourcompany.SoulseekQt.savedState",
  ]
end
