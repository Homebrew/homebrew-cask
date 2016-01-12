cask 'machider1' do
  version '1.6.7'
  sha256 'a060a91ebdcbce09a0418319e6c33a7e8586772ba2014b94b6825b9452a39455'

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.macpaw.MacHider/MacHider.dmg'
  name 'MacHider'
  homepage 'http://macpaw.com/support/hider/knowledgebase/machider-support'
  license :commercial

  app 'MacHider.app'
end
