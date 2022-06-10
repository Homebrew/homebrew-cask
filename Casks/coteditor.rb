cask "coteditor" do
  if MacOS.version <= :yosemite
    version "3.2.8"
    sha256 "73dd20d27b75c7b0c46242a465adb3df5b5f0b901f42c5a9a85777a57c4a17d6"
  elsif MacOS.version <= :el_capitan
    version "3.5.4"
    sha256 "0b2cbf38cc531268e3691f307445e05ae5da64b48ceaf86c4d16b993c9be3e9f"
  elsif MacOS.version <= :mojave
    version "3.9.7"
    sha256 "be34d4f800e73cc8363d8b83e1b257a06176dc85d345d680149b108f51686cf2"
  elsif MacOS.version <= :catalina
    version "4.0.9"
    sha256 "969e891f4a36146c317150806fee01559d177f956734595c73537affc8897e79"
  else
    version "4.2.3"
    sha256 "3790257571ad6d5377801e5b64c13e85d14f4ed49d5d31ade857a5791d956188"
  end

  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg",
      verified: "github.com/coteditor/CotEditor/"
  name "CotEditor"
  desc "Plain-text editor for web pages, program source codes and more"
  homepage "https://coteditor.com/"

  livecheck do
    if MacOS.version >= :big_sur
      url :url
      regex(%r{href=.*?/tag/v?(\d+(?:[.-]\d+)+)["' >]}i)
      strategy :github_latest
    else
      skip "version is static on older macOS releases"
    end
  end

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
