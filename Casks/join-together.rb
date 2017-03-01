cask 'join-together' do
  version '7.7.1'
  sha256 'c822867606d81d585ed16eedeec48605a6549b3dc6415ff9966273e1c5ecb18a'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: '70b5db8627710a9ea92b5db8f594b43633951ad0506c5d06d74945cb230655f5'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end
