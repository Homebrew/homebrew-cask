cask 'scythebill' do
  version '13.9.4'
  sha256 '70ab53b1ac6c5d25fcab6e1f42882439155966d9c1a07c584b6143096a287528'

  # storage.googleapis.com/scythebill-releases was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/scythebill-releases/Scythebill-#{version}.dmg"
  appcast 'https://www.scythebill.com/download.html',
          checkpoint: 'cf04943a59004fb799c6845a29ad2a8f5c9188549dc0705fd2944de7d3012228'
  name 'Scythebill'
  homepage 'https://www.scythebill.com/'

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
