cask "apparency" do
  version "1.1.1"
  sha256 "eb8d159fa4254acd4652b596f442dc2f235f2b52b91c2edda6581f0b14bc41b3"

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
