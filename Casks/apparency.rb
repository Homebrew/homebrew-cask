cask "apparency" do
  version "1.4.1,218"
  sha256 :no_check

  url "https://mothersruin.com/software/downloads/Apparency.dmg"
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

  depends_on macos: ">= :catalina"

  app "Apparency.app"

  zap trash: [
    "~/Library/Application Scripts/com.mothersruin.Apparency",
    "~/Library/Application Scripts/com.mothersruin.Apparency.QLPreviewExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.apparency.sfl*",
    "~/Library/Containers/com.mothersruin.Apparency",
    "~/Library/Containers/com.mothersruin.Apparency.QLPreviewExtension",
  ]
end
