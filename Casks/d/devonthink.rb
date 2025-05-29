cask "devonthink" do
  on_catalina :or_older do
    version "3.9.6"
    sha256 "e272af94a61619adaf729de336e1ef24465a5e6ff27ed6ae8cb11d28ca35638a"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.9.11"
    sha256 "502bab23b869709edfa6a975d87b4094d9e43a9571945a76b31d20a6fa906b93"

    # The appcast may include unstable versions where upstream doesn't specify a
    # separate channel, so we have to identify stable versions using a regex.
    livecheck do
      url "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300900000"
      regex(/^v?(\d+(?:\.\d+)+)$/i)
      strategy :sparkle do |items, regex|
        items.map { |item| item.version[regex, 1] }
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
