cask "soulseek" do
  version "2025-10-11"
  sha256 "2f3a36434d315440385e822b660ab36be127af556954af0a79e825cd872b5011"

  url "https://f004.backblazeb2.com/file/SoulseekQt/SoulseekQt-#{version}.dmg",
      verified: "f004.backblazeb2.com/file/SoulseekQt/"
  name "Soulseek"
  desc "File sharing network"
  homepage "https://www.slsknet.org/"

  livecheck do
    url "https://www.slsknet.org/news/node/1"
    regex(/href=.*?SoulseekQt[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "SoulseekQt.app"

  zap trash: [
    "~/.SoulseekQt",
    "~/Library/Saved Application State/com.yourcompany.SoulseekQt.savedState",
  ]
end
