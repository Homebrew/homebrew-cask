cask 'imgotv' do
  version '6.2.2,2'
  sha256 'a79c48c642060ec35b721c57f29d3b6ec6ebe701f23b66e811619c0d88b71223'

  # download.imgo.tv was verified as official when first introduced to the cask
  url "https://download.imgo.tv/app/pc/newmac/#{version.before_comma}-#{version.after_comma}/mgtv-mango2-#{version.before_comma}.dmg"
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
