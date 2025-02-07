cask "drawbot" do
  version "3.131"
  sha256 "da03cd73d2c7ea221977fddd0b77856d0076f4d3833fdd0580823cc76dcaa0dc"

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
