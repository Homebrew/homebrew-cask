cask 'imgotv' do
  version '6.0.3-mango2'
  sha256 'b69a5fedc1af407f48191d0f1e666bc3edf5f05597efc1e6ef97a7ddadb44cd3'

  # download.imgo.tv was verified as official when first introduced to the cask
  url "https://download.imgo.tv/app/pc/mac/mgtv-client-#{version}.dmg"
  appcast 'https://www.mgtv.com/app/'
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
