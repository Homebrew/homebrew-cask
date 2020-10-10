cask "gifox" do
  version "2.2.3,020203.00"
  sha256 "de8eb279d7cf890705ff2ce5ef3543cb662709d49797f7c6365bcf00f129145d"

  # d3si16icyi9iar.cloudfront.net/gifox/ was verified as official when first introduced to the cask
  url "https://d3si16icyi9iar.cloudfront.net/gifox/#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://gifox.io/download/latest",
          must_contain: version.after_comma
  name "gifox"
  desc "App to record the screen"
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
