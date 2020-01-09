cask 'gifox' do
  version '2.1.0,020100.00'
  sha256 '7846fb0faefa124c256b40118280f6c34e040fcdc7e87de9fab4747469e369ae'

  # d3si16icyi9iar.cloudfront.net/gifox was verified as official when first introduced to the cask
  url "https://d3si16icyi9iar.cloudfront.net/gifox/#{version.after_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/download_with_useragent.cgi?url=https://api.gifox.io/appcast?prereleases=false'
  name 'gifox'
  homepage 'https://gifox.io/'

  app 'Gifox.app'

  uninstall launchctl: "com.gifox.gifox#{version.major}.agent",
            quit:      "com.gifox.gifox#{version.major}"

  zap trash: [
               "~/Library/Application Support/Gifox #{version.major}",
               "~/Library/Caches/com.gifox.gifox#{version.major}",
               "~/Library/Cookies/com.gifox.gifox#{version.major}.binarycookies",
               "~/Library/Preferences/com.gifox.gifox#{version.major}.plist",
             ]
end
