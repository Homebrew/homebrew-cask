cask "gifox" do
  version "2.2.4,020204.04"
  sha256 "c68fb501e5ea371a5b0ba87599c0f04f1cca9735f8d498988c4cf685b13268c9"

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
