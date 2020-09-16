cask "apparency" do
  version "1.1"
  sha256 "810708d82bc1bed6e339776a60f8c5214aada870a17795c673e778e5006a3f1b"

  url "https://mothersruin.com/software/downloads/Apparency.dmg"
  appcast "https://www.mothersruin.com/software/Apparency/data/ApparencyVersionInfo.plist"
  name "Apparency"
  desc "Inspect application bundles"
  homepage "https://www.mothersruin.com/software/Apparency/"

  depends_on macos: ">= :mojave"

  app "Apparency.app"

  zap trash: [
    "~/Library/Application Scripts/com.mothersruin.Apparency",
    "~/Library/Application Scripts/com.mothersruin.Apparency.QLPreviewExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.apparency.sfl*",
    "~/Library/Containers/com.mothersruin.Apparency",
    "~/Library/Containers/com.mothersruin.Apparency.QLPreviewExtension",
  ]
end
