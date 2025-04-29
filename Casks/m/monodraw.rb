cask "monodraw" do
  version "1.7,117"
  sha256 "1d403958cf976c8524fb154fb9e8da9aae11da8572d2a14b1e53720fb2f9c962"

  url "https://updates.helftone.com/monodraw/downloads/Monodraw-b#{version.csv.second}.zip"
  name "Monodraw"
  desc "Tool to create text-based art"
  homepage "https://monodraw.helftone.com/"

  livecheck do
    url "https://updates.helftone.com/monodraw/appcast-beta.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Monodraw.app"
  binary "#{appdir}/Monodraw.app/Contents/Resources/monodraw"

  zap trash: [
    "~/Library/Application Support/com.helftone.monodraw",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.helftone.monodraw.help*",
    "~/Library/Caches/com.helftone.monodraw",
    "~/Library/Preferences/com.helftone.monodraw.plist",
  ]
end
