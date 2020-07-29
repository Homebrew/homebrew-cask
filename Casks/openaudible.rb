cask 'openaudible' do
  version '2.1.1'
  sha256 'e5748088a5ce26dc1709f5b8c6fb6fba41486ff82fe7546af246a4f1d9b0072a'

  # github.com/openaudible/ was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast 'https://github.com/openaudible/openaudible/releases.atom'
  name 'OpenAudible'
  homepage 'https://openaudible.org/'

  app 'OpenAudible.app'

  zap trash: '/Library/OpenAudible'
end
