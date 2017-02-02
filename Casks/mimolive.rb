cask 'mimolive' do
  version '2.8-22911'
  sha256 '536572b8fae4d1216c361ed34c0a2370d2041215c6c1d8f6b588e55644330b3a'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect//histories/mimolive',
          checkpoint: '7d972210f2d8197b0604b80e82ea4985efdbead9d7364b421fec6bc3ebaf1319'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :yosemite'

  app 'mimoLive.app'
end
