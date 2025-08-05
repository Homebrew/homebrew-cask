cask "drawbot" do
  version "3.132"
  sha256 "e7e39a6b4d2345ed7e81d84914c7681bcc7ee9601a5f4d09e6f3dfce64d1903d"

  url "https://github.com/typemytype/drawbot/releases/download/#{version}/DrawBot.dmg",
      verified: "github.com/typemytype/drawbot/"
  name "DrawBot"
  desc "Write Python scripts to generate two-dimensional graphics"
  homepage "https://www.drawbot.com/"

  app "DrawBot.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.drawbot.sfl*",
    "~/Library/Preferences/com.drawbot.plist",
    "~/Library/Saved Application State/com.drawbot.savedState",
  ]
end
