cask 'join-together' do
  version '7.8.3'
  sha256 '09461af1b3c2252d04a1c00d4e0d108e164e3a079a16aeb19b8131dcbf7e9953'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end
