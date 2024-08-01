cask "devonthink" do
  version "3.9.7"
  sha256 "70f9c06eeb316bea36fd15900cec96a2ff84224760b11ae1ac13d415b8354c5d"

  url "https://download.devontechnologies.com/download/devonthink/#{version}/DEVONthink_#{version.major}.app.zip"
  name "DEVONthink"
  desc "Collect, organise, edit and annotate documents"
  homepage "https://www.devontechnologies.com/apps/devonthink/"

  livecheck do
    url "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300900000"
    strategy :sparkle do |items|
      items.map(&:version)
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "DEVONthink #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.devon-technologies.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.devon-technologies.think*.sfl*",
    "~/Library/Application Support/DEVONthink*",
    "~/Library/Caches/com.apple.helpd/Generated/com.devontechnologies.devonthink.help*",
    "~/Library/Caches/com.devon-technologies.think*",
    "~/Library/Containers/com.devon-technologies.*",
    "~/Library/Cookies/com.devon-technologies.think*.binarycookies",
    "~/Library/Group Containers/679S2QUWR8.think*",
    "~/Library/Metadata/com.devon-technologies.think*",
    "~/Library/Preferences/com.devon-technologies.think*",
    "~/Library/Saved Application State/com.devon-technologies.think*.savedState",
    "~/Library/Scripts/Applications/DEVONagent",
    "~/Library/Scripts/Folder Action Scripts/DEVONthink*",
    "~/Library/WebKit/com.devon-technologies.think*",
  ]
end
