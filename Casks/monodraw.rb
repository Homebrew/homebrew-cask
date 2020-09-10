cask "monodraw" do
  version "1.4,b103"
  sha256 "a3a61a256908741c7da879726940e27f0b246400c7abe8e862e477db790d3a12"

  url "https://updates.helftone.com/monodraw/downloads/Monodraw-#{version.after_comma}.zip"
  appcast "https://updates.helftone.com/monodraw/appcast-beta.xml"
  name "Monodraw"
  desc "Tool to create text-based art"
  homepage "https://monodraw.helftone.com/"

  depends_on macos: ">= :mojave"

  app "Monodraw.app"
  binary "#{appdir}/Monodraw.app/Contents/Resources/monodraw"

  zap trash: [
    "~/Library/Application Support/com.helftone.monodraw",
    "~/Library/Caches/com.helftone.monodraw",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.helftone.monodraw.help*",
    "~/Library/Preferences/com.helftone.monodraw.plist",
  ]
end
