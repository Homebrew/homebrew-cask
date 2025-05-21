cask "coteditor" do
  on_ventura :or_older do
    on_el_capitan :or_older do
      version "3.5.4"
      sha256 "0b2cbf38cc531268e3691f307445e05ae5da64b48ceaf86c4d16b993c9be3e9f"
    end
    on_sierra do
      version "3.7.8"
      sha256 "c67a0b5049da7096228074d7b71e7678fcaaf795a5ae45bc593019662f0c6f09"
    end
    on_high_sierra do
      version "3.9.7"
      sha256 "be34d4f800e73cc8363d8b83e1b257a06176dc85d345d680149b108f51686cf2"
    end
    on_mojave do
      version "3.9.7"
      sha256 "be34d4f800e73cc8363d8b83e1b257a06176dc85d345d680149b108f51686cf2"
    end
    on_catalina do
      version "4.0.9"
      sha256 "969e891f4a36146c317150806fee01559d177f956734595c73537affc8897e79"
    end
    on_big_sur do
      version "4.3.6"
      sha256 "8c1ecf6fd66a9885d428a6303d9d1c5ecb811c1c35c97bdbccdad72359d96ad9"
    end
    on_monterey do
      version "4.5.9"
      sha256 "fa3e4a1fdf7edfc109c5588292906d864d430d2e8bd3d84161b1f0a7892163f6"
    end
    on_ventura do
      version "4.8.7"
      sha256 "9c439ace99d6b74cf94738d24368ccc39c579902c7062f8e107c596061a58dda"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "5.1.6"
    sha256 "58dc96c7c44ca4d292649686d77f1d74e812ba6beff70a76041a32d400b7e42e"

    livecheck do
      url "https://coteditor.com/appcast.xml"
      strategy :sparkle, &:short_version
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

  uninstall quit: "com.coteditor.CotEditor"

  zap trash: [
    "~/Library/Application Scripts/com.coteditor.CotEditor",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coteditor.coteditor.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/com.coteditor.CotEditor.help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/Japanese/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
    "~/Library/Caches/com.coteditor.CotEditor",
    "~/Library/Containers/com.coteditor.CotEditor",
    "~/Library/Preferences/com.coteditor.CotEditor.plist",
  ]
end
