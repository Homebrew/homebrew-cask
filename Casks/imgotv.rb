cask 'imgotv' do
  version '6.1.1-mango2'
  sha256 '010df642af300d03fcf075ffa5cfb7a38ba345e448106d262152396f189a0430'

  # download.imgo.tv was verified as official when first introduced to the cask
  url "https://download.imgo.tv/app/pc/mac/mgtv-client-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Mac%20OS%20X&url=http://pcconf.api.mgtv.com/getPcDownloadUrl?source=mango2'
  name 'hunantv'
  name '芒果视频'
  homepage 'https://www.mgtv.com/app/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app '芒果TV极速版.app'

  zap trash: [
               '~/Library/Preferences/com.hunantv.osx.imgotv.plist',
               '~/Library/Caches/com.hunantv.LaunchAtLoginHelper',
               '~/Library/Saved Application State/com.hunantv.osx.imgotv.savedState',
               '~/Library/Caches/com.hunantv.osx.imgotv',
               '~/Library/Caches/Imgotv-Mac',
               '~/Library/Logs/Imgotv-Mac',
             ]
end
