cask 'openaudible' do
  version '1.6.7'
  sha256 'a87ed9d98055530a2b3c8568f047eed786f06f4318c09bc36a38aa71d8799821'

  # github.com/openaudible was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast 'https://github.com/openaudible/openaudible/releases.atom'
  name 'OpenAudible'
  homepage 'https://openaudible.org/'

  app 'OpenAudible.app'

  zap trash: '/Library/OpenAudible'
end
