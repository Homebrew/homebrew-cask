cask 'openaudible' do
  version '1.6.6'
  sha256 'bc020967f2ee24070db8ccbff4e0807fd1568f0af2f30d360d54d600ab61d5be'

  # github.com/openaudible was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast 'https://github.com/openaudible/openaudible/releases.atom'
  name 'OpenAudible'
  homepage 'https://openaudible.org/'

  app 'OpenAudible.app'

  zap trash: '/Library/OpenAudible'
end
