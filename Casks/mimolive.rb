cask 'mimolive' do
  version '3.2.1-23763'
  sha256 'b185518d1738af2e325c774d20a1e8f1f918d0005b6d085cf17d4758dfbe2cdc'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive',
          checkpoint: '3ad0af88a9729b848c46e38c38f68c576efb49118817a6ca952dff8cea84f101'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :yosemite'

  app 'mimoLive.app'
end
