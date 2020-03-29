cask 'openaudible' do
  version '1.6.5'
  sha256 'ef56040ad7f050097c936944f116c5d3f1a21f24a18030d53befcdd8342056ae'

  # github.com/openaudible was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast 'https://github.com/openaudible/openaudible/releases.atom'
  name 'OpenAudible'
  homepage 'https://openaudible.org/'

  app 'OpenAudible.app'

  zap trash: '/Library/OpenAudible'
end
