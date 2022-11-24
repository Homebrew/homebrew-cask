cask "apparency" do
  if MacOS.version <= :mojave
    version "1.3"
    url "https://www.mothersruin.com/software/downloads/Apparency-#{version}.dmg"
    sha256 "31704bc2d9594bf185bd6dfa6541c986749d524ecdab11cff18c5a5c095e0157"
  else
    version "1.5,277"
    url "https://mothersruin.com/software/downloads/Apparency.dmg"
    sha256 :no_check
  end

  name "Apparency"
  desc "Inspect application bundles"
  homepage "https://www.mothersruin.com/software/Apparency/"

  livecheck do
    url "https://www.mothersruin.com/software/Apparency/data/ApparencyVersionInfo.plist"
    regex(/CFBundleShortVersionString.*?\n.*?(\d+(?:\.\d+)+).*?\n.*?CFBundleVersion.*?\n.*?(\d+(?:\.\d+)*)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :mojave"

  app "Apparency.app"
  binary "#{appdir}/Apparency.app/Contents/MacOS/appy"

  zap trash: [
    "~/Library/Application Scripts/com.mothersruin.Apparency",
    "~/Library/Application Scripts/com.mothersruin.Apparency.QLPreviewExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.apparency.sfl*",
    "~/Library/Containers/com.mothersruin.Apparency",
    "~/Library/Containers/com.mothersruin.Apparency.QLPreviewExtension",
  ]
end
