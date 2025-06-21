cask "axure-rp" do
  version "11.0.0.4131"
  sha256 "a77e96ad7a0eb01347ca4e744c4f7415488639505f2a7b139bba2e8cc396b681"

  url "https://axure.cachefly.net/versions/#{version.csv.first.major_minor.dots_to_hyphens}/AxureRP-Setup-#{version.split(".")[3]}.dmg",
      verified: "axure.cachefly.net/"
  name "Axure RP"
  desc "Planning and prototyping tool for developers"
  homepage "https://www.axure.com/"

  livecheck do
    url "https://www.axure.com/release-history"
    regex(/>\s*(?:Version|Axure\s*RP)\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

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
