cask 'electerm' do
  version '1.0.33'
  sha256 '20bfea8e1377fe8b2bdcc86d0212917bd9c6cb88d2490d8eb4380c6c1141d5f9'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
