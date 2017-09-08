cask 'mullvad' do
  version '64'
  sha256 '14331dfec5533d41b359c7966b9f1c75d615b87d939033c9d77d636769d55080'

  url "https://www.mullvad.net/media/client/Mullvad-#{version}.dmg"
  name 'Mullvad'
  homepage 'https://mullvad.net/'

  app 'Mullvad.app'
end
