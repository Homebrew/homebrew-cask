cask 'join-together' do
  version '7.7.3'
  sha256 '8b8771a048096ba27d01fe334673b990483cb957d7836895ca18f295dd222e30'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: '2b85a0d3b4ca1b61d84c4c397d738f81864682781eba8adb1f5b8d0f86b5af7d'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end
