cask "notion-calendar" do
  version :latest
  sha256 :no_check

  url "https://dl.todesktop.com/210303leazlircz/mac/dmg/#{on_intel do
                                                            "x64"
                                                          end
                                                          on_arm do
                                                            "arm64"
                                                          end}",
      verified: "dl.todesktop.com/210303leazlircz/"
  name "Notion Calendar"
  desc "Integrate your calendar with Notion"
  homepage "https://www.notion.so/product/calendar"

  depends_on macos: :catalina

  app "Notion Calendar.app"

  zap trash: [
    "~/Library/Application Support/Notion Calendar",
    "~/Library/Preferences/com.notion.calendar.plist",
    "~/Library/Saved Application State/com.notion.calendar.savedState",
  ]
end
