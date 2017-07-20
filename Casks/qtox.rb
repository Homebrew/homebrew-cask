cask 'qtox' do
  version '1.11.0'
  sha256 'c34dd0ba34f95a20ae22f51f0fa30a46bccda670a0ee8eb3ab63838c495366d3'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom',
          checkpoint: '77dd492202bc8738c56063241c9501447a57769c5f10a2cf4bd8f5124cc7b024'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
