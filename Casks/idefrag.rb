cask 'idefrag' do
  version '5.1.1'
  sha256 '430adf1d3460265aaa6112aab7e20a2227f877caac7dd5b619f9438e38f06a6e'

  url "https://coriolis-systems.com/downloads/iDefrag-#{version}.dmg"
  name 'iDefrag'
  homepage 'https://coriolis-systems.com/iDefrag/'
  license :commercial

  app 'iDefrag.app'
end
