cask 'duet' do
  version '2.3.1.0'
  sha256 'b5c6e11fc67b2de85486be7fc5f7575e1a55f98d6554d1ec055c4b219fccdba6'

  # duet.nyc3.cdn.digitaloceanspaces.com/Mac was verified as official when first introduced to the cask
  url "https://duet.nyc3.cdn.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://updates.duetdisplay.com/latestMac',
          configuration: version.dots_to_hyphens
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall quit: 'com.kairos.duetMac',
            kext: 'com.karios.driver.DuetDisplay'

  zap trash: [
               '~/Library/Preferences/com.kairos.duet*.plist',
               '~/Library/Application Support/com.kairos.duet*',
               '~/Library/Caches/com.crashlytics.data/com.kairos.duet*',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.kairos.duet*',
               '~/Library/Caches/com.kairos.duet*',
             ],
      rmdir: [
               '~/Library/Caches/com.crashlytics.data',
               '~/Library/Caches/io.fabric.sdk.mac.data',
             ]
end
