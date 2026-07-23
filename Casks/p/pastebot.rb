cask "pastebot" do
  version "2.4.8"
  sha256 "3cd01fee94994cebce198ea81e48dce9b1aef86986836d17fc86f91fa9f047cc"

  url "https://tapbots.net/pastebot#{version.major}/Pastebot.dmg",
      verified: "tapbots.net/"
  name "Pastebot"
  desc "Workflow application to improve productivity"
  homepage "https://tapbots.com/pastebot/"

  livecheck do
    url "https://tapbots.net/pastebot#{version.major}/update.plist"
    strategy :xml do |xml|
      xml.get_elements("//key[text()='shortVersion']").map { |item| item.next_element&.text&.strip }
    end
  end

  auto_updates true
  depends_on :macos

  app "Pastebot.app"

  uninstall quit: "com.tapbots.Pastebot#{version.major}Mac"

  zap trash: [
    "~/Library/Application Scripts/9JTH7AWHE6.com.tapbots.Pastebot#{version.major}Mac",
    "~/Library/Application Scripts/com.tapbots.Pastebot#{version.major}Mac*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tapbots.pastebot#{version.major}mac.launchhelper.sfl*",
    "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac*",
    "~/Library/Group Containers/9JTH7AWHE6.com.tapbots.Pastebot#{version.major}Mac",
    "~/Library/Preferences/com.tapbots.Pastebot#{version.major}Mac.plist",
  ]
end
