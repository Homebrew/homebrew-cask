cask "axure-rp" do
  version "11.0.0.4150"
  sha256 "5a9e2a9f9c782dcdd6836ff5a1a379a84f9d63e87f14b75d31bb03f148722357"

  url "https://axure.cachefly.net/versions/#{version.csv.first.major_minor.dots_to_hyphens}/AxureRP-Setup-#{version.split(".")[3]}.dmg"
  name "Axure RP"
  desc "Planning and prototyping tool for developers"
  homepage "https://www.axure.com/"

  livecheck do
    url "https://www.axure.com/changelog?filter=Axure+RP"
    regex(/>\s*(?:Version|Axure\s*RP)\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "Axure RP #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#*.sfl*",
    "~/Library/Preferences/com.axure.AxureRP#*.plist",
    "~/Library/Saved Application State/com.axure.AxureRP#*.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
