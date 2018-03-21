cask 'audirvana-plus' do
  version '3.2.6'
  sha256 'cc56351ed9f9ba64d59bf5e5d16c7a562f60f55a47e8f102ae74622960e05b0c'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: '787610aa5427e8454511a636e5f2602a4f71eedf649107ed18d1fe14d1605ab7'
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'

  zap trash: [
               '/Library/LaunchDaemons/com.audirvana.Audirvana-Plus.plist',
               '/Library/PrivilegedHelperTools/com.audirvana.Audirvana-Plus',
               '~/Library/Caches/com.audirvana.Audirvana-Plus',
               '~/Library/Cookies/com.audirvana.Audirvana-Plus.binarycookies',
               '~/Library/Preferences/com.audirvana.Audirvana-Plus.plist',
             ]
end
