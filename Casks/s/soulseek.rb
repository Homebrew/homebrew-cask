cask "soulseek" do
  version "2024-2-1"
  sha256 "2daa09953aa9bbb62ffa4dee87b8cc219c3f8f88f349309d47faa3aaed213e70"

  url "https://www.slsknet.org/SoulseekQt/Mac/SoulseekQt-#{version}.dmg"
  name "Soulseek"
  desc "File sharing network"
  homepage "https://www.slsknet.org/"

  livecheck do
    url "https://www.slsknet.org/news/node/1"
    regex(%r{href=.*?/SoulseekQt[._-]v?(\d+(?:-\d+)+)\.dmg}i)
  end

  app "SoulseekQt.app"

  zap trash: [
    "~/.SoulseekQt",
    "~/Library/Saved Application State/com.yourcompany.SoulseekQt.savedState",
  ]
end
