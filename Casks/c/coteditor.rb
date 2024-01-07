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
  on_big_sur do
    version "4.3.6"
    sha256 "8c1ecf6fd66a9885d428a6303d9d1c5ecb811c1c35c97bdbccdad72359d96ad9"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "4.5.9"
    sha256 "fa3e4a1fdf7edfc109c5588292906d864d430d2e8bd3d84161b1f0a7892163f6"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "4.7.2"
    sha256 "e03cfece2d7a48020621d9c754964923f6fdc725a1a5d8556836c49a245f1983"

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
  depends_on macos: ">= :monterey"

  app "CotEditor.app"
  binary "#{appdir}/CotEditor.app/Contents/SharedSupport/bin/cot"

  uninstall quit: [
    "com.coteditor.CotEditor",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.coteditor.CotEditor",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coteditor.coteditor.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/com.coteditor.CotEditor.help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/Japanese/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
    "~/Library/Containers/com.coteditor.CotEditor",
    "~/Library/Preferences/com.coteditor.CotEditor.plist",
  ]
end
