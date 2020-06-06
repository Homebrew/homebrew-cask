cask 'imgotv' do
  version '6.2.4'
  sha256 'da9d0ceb3ee0a911b9d333fe8706dce01b1f8961ff986ab6e3cce32235629906'

  # download.imgo.tv/ was verified as official when first introduced to the cask
  url "https://download.imgo.tv/app/mac/#{version}/mgtv-mango-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Mac%20OS%20X&url=http://pcconf.api.mgtv.com/getPcDownloadUrl?source=mango2'
  name '芒果TV'
  homepage 'https://www.mgtv.com/app/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app '芒果TV.app'

  zap trash: [
               '~/Library/Preferences/com.hunantv.osx.imgotv.plist',
               '~/Library/Caches/com.hunantv.LaunchAtLoginHelper',
               '~/Library/Saved Application State/com.hunantv.osx.imgotv.savedState',
               '~/Library/Caches/com.hunantv.osx.imgotv',
               '~/Library/Caches/Imgotv-Mac',
               '~/Library/Logs/Imgotv-Mac',
             ]
end
