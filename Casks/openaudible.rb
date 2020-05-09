cask 'openaudible' do
  version '2.0.6'
  sha256 'bd61fcac52d077c5a53db6df576313a9cff50acbf52a95821233769b61c5b88f'

  # github.com/openaudible/ was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast 'https://github.com/openaudible/openaudible/releases.atom'
  name 'OpenAudible'
  homepage 'https://openaudible.org/'

  app 'OpenAudible.app'

  zap trash: '/Library/OpenAudible'
end
