cask 'gifox' do
  version '2.0.0,020000.07'
  sha256 '0b4a8984a6f46ae5583675d44144b9741a9f50d8ecd23a76371683c0b9cf5226'

  # d3si16icyi9iar.cloudfront.net/gifox was verified as official when first introduced to the cask
  url "https://d3si16icyi9iar.cloudfront.net/gifox/#{version.after_comma}.dmg"
  appcast 'https://d3si16icyi9iar.cloudfront.net/gifox/appcast.xml'
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
