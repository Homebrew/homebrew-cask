cask 'pikopixel' do
  version '1.0-b7'
  sha256 '6316f098a9f628fe195e56801dc688db8d27ee81eacc81e94c7b7635c08de20e'

  url "http://twilightedge.com/downloads/PikoPixel.#{version}.dmg",
      user_agent: :fake
  appcast 'http://twilightedge.com/mac/pikopixel/history.html',
          checkpoint: 'ed0c1ad08e1ad6e16901fec8a50cfe91c3fde3e5e02bfe39a29a42f6a0ae78fd'
  name 'PikoPixel'
  homepage 'http://twilightedge.com/mac/pikopixel/'

  app 'PikoPixel.app'
end
