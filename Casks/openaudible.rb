cask 'openaudible' do
  version '2.0.2'
  sha256 'faf0749eab80c267b9ea3a56c38c9966954dae47c737ce547ef432bf9f4b48d9'

  # github.com/openaudible/ was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast 'https://github.com/openaudible/openaudible/releases.atom'
  name 'OpenAudible'
  homepage 'https://openaudible.org/'

  app 'OpenAudible.app'

  zap trash: '/Library/OpenAudible'
end
