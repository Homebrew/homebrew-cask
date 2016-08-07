cask 'liteicon' do
  version '3.6.3'
  sha256 '3be04be9cd4b566485d1b60937aaa8e2981771193c96b37314a876a9a99c330d'

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml',
          checkpoint: '4b8e5c1a05b42ce6bb81f749d33a321a9f8b3a66cfbd47511b3dae13e471ab96'
  name 'LiteIcon'
  homepage 'https://www.freemacsoft.net/liteicon/'
  license :gratis

  app 'LiteIcon.app'
end
