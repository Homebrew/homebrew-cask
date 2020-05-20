cask 'openaudible' do
  version '2.0.8'
  sha256 '46ee778e429e1b7b5896227513afc357a38df369c1daadd8a08a0981113c8520'

  # github.com/openaudible/ was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast 'https://github.com/openaudible/openaudible/releases.atom'
  name 'OpenAudible'
  homepage 'https://openaudible.org/'

  app 'OpenAudible.app'

  zap trash: '/Library/OpenAudible'
end
