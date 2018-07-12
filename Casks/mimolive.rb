cask 'mimolive' do
  version '4.2.1-25918'
  sha256 '60e28286ac660991323c988fcb256103bb31765c42fdcf279640437038505dc4'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
