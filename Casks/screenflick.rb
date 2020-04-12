cask 'screenflick' do
  version '2.7.49'
  sha256 '76bceb692c9910c8213b0b5c554e7ca3ec215c7e9860176c56b6ef746ccf1c4a'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json'
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
