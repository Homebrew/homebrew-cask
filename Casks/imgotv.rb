cask 'imgotv' do
  version '3.3.3_20180514'
  sha256 'f457b02aa7bca895677a21e55fd3c7fa05d02cfaefdc46c8558fc99b577e3c5a'

  url "http://downloadimgo.hunantv.com/app/mac/mgtv_#{version}_release.dmg"
  name 'hunantv'
  name '芒果视频'
  homepage 'http://www.hunantv.com/app'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Imgotv-Mac.app'

  zap trash: [
               '~/Library/Preferences/com.hunantv.osx.imgotv.plist',
               '~/Library/Caches/com.hunantv.LaunchAtLoginHelper',
               '~/Library/Saved Application State/com.hunantv.osx.imgotv.savedState',
               '~/Library/Caches/com.hunantv.osx.imgotv',
               '~/Library/Caches/Imgotv-Mac',
               '~/Library/Logs/Imgotv-Mac',
             ]
end
