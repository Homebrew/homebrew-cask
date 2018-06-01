cask 'craftmanager' do
  version '1.0.65'
  sha256 '3134b038dcf926ed0de7b483f5367dc92255ca61aaec51d9479283ef7cbb6db7'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: 'bbea47edff629df9e6a6665da5d2b507fe46a71835c4674d425a681a33914cdb'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
