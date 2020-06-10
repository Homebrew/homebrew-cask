cask 'electerm' do
  version '1.3.36'
  sha256 'c551123867e175b4fccbc21092e29b8125852d224d160860db776b2287e283a5'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
