cask "devonthink" do
  on_catalina :or_older do
    version "3.9.6"
    sha256 "e272af94a61619adaf729de336e1ef24465a5e6ff27ed6ae8cb11d28ca35638a"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.9.8"
    sha256 "c56169fa98b72c2f043f6c2ca55c996a8fddc539e0df2b351ea45714e2427c1e"

    livecheck do
      url "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300900000"
      strategy :sparkle do |items|
        items.map(&:version)
      end
    end
  end

  url "https://download.devontechnologies.com/download/devonthink/#{version}/DEVONthink_#{version.major}.app.zip"
  name "DEVONthink"
  desc "Collect, organise, edit and annotate documents"
  homepage "https://www.devontechnologies.com/apps/devonthink"

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
