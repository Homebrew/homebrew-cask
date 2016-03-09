cask 'beamer' do
  version '3.1.1'
  sha256 '5d18d26964c6810a68304b34cba9e7438cbf0589fc39f29d1b02be7d47d93d4f'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast 'https://beamer-app.com/beamer3-appcast.xml',
          checkpoint: 'b6f0db65f5f61ed54e1d4c8de62f58f087ed6b3f1fd109fb5425290bf1800457'
  name 'Beamer'
  homepage 'https://beamer-app.com/'
  license :commercial

  app 'Beamer.app'
end
