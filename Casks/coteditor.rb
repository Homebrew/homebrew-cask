cask "coteditor" do
  on_el_capitan :or_older do
    version "3.5.4"
    sha256 "0b2cbf38cc531268e3691f307445e05ae5da64b48ceaf86c4d16b993c9be3e9f"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra do
    version "3.9.7"
    sha256 "be34d4f800e73cc8363d8b83e1b257a06176dc85d345d680149b108f51686cf2"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "3.9.7"
    sha256 "be34d4f800e73cc8363d8b83e1b257a06176dc85d345d680149b108f51686cf2"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "3.9.7"
    sha256 "be34d4f800e73cc8363d8b83e1b257a06176dc85d345d680149b108f51686cf2"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "4.0.9"
    sha256 "969e891f4a36146c317150806fee01559d177f956734595c73537affc8897e79"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "4.5.7"
    sha256 "6f794ad832f04a2fabb3008d3257bb00eae196d659ee79cb3e9178ca9f96b59d"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg",
      verified: "github.com/coteditor/CotEditor/"
  name "CotEditor"
  desc "Plain-text editor for web pages, program source codes and more"
  homepage "https://coteditor.com/"

  auto_updates true

  app "CotEditor.app"
  binary "#{appdir}/CotEditor.app/Contents/SharedSupport/bin/cot"

  zap trash: [
    "~/Library/Application Scripts/com.coteditor.CotEditor",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coteditor.coteditor.sfl*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/Japanese/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
    "~/Library/Containers/com.coteditor.CotEditor",
    "~/Library/Preferences/com.coteditor.CotEditor.plist",
  ]
end
