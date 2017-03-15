cask 'mullvad' do
  version '62'
  sha256 '980a638842f43a8466c7a856152b65efb7a9aa88721c218194a4ac6653ff3448'

  url "https://www.mullvad.net/media/client/Mullvad-#{version}.dmg"
  name 'Mullvad'
  homepage 'https://mullvad.net/'

  app 'Mullvad.app'
end
