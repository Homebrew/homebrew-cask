cask "monodraw" do
  version "1.5,b107"
  sha256 "f5f9042605bd9f80efd0a0a634c27f04ff079e2e55d12491d0c9f22fd4f0a09c"

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
