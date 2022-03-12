cask "axure-rp" do
  version "10.0.0.3857"
  sha256 "28907934374c57ad9c8ab039b4ab1f5df3ade3080d500662f433b3f831072790"

  url "https://axure.cachefly.net/versions/#{version.csv.first.major_minor.dots_to_hyphens}/AxureRP-Setup-#{version.split(".")[3]}.dmg",
      verified: "axure.cachefly.net/"
  name "Axure RP"
  desc "Planning and prototyping tool for developers"
  homepage "https://www.axure.com/"

  livecheck do
    url "https://www.axure.com/release-history"
    regex(/>\s*(?:Version|Axure\s*RP)\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Axure RP #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#*.sfl*",
    "~/Library/Preferences/com.axure.AxureRP#*.plist",
    "~/Library/Saved Application State/com.axure.AxureRP#*.savedState",
  ]
end
