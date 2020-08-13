cask "gifox" do
  version "2.2.2,020202.00"
  sha256 "e81c067894161cecffd0afb1f5bc85fdad8b8d8ebe0775fdc7fc202d77ff1bce"

  # d3si16icyi9iar.cloudfront.net/gifox/ was verified as official when first introduced to the cask
  url "https://d3si16icyi9iar.cloudfront.net/gifox/#{version.after_comma}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/download_with_useragent.cgi?url=https://api.gifox.io/appcast?prereleases=false"
  name "gifox"
  homepage "https://gifox.io/"

  app "Gifox.app"

  uninstall launchctl: "com.gifox.gifox#{version.major}.agent",
            quit:      "com.gifox.gifox#{version.major}"

  zap trash: [
    "~/Library/Application Support/Gifox #{version.major}",
    "~/Library/Caches/com.gifox.gifox#{version.major}",
    "~/Library/Cookies/com.gifox.gifox#{version.major}.binarycookies",
    "~/Library/Preferences/com.gifox.gifox#{version.major}.plist",
  ]
end
