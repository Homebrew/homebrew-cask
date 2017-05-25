cask 'carbon-copy-cloner' do
  version '4.1.15.4548'
  sha256 'e11584ea9b61b2c4d2fb8839158f7c087b3c78a7b49bc4d5814a85c192e6aa33'

  url "https://bombich.com/software/download_ccc_update.php?v=#{version}"
  appcast 'https://bombich.com/software/updates/ccc.php',
          checkpoint: 'eec027f0d0aa576e292b4fe57441f1821409c6295330787dd82533b0d483cb26'
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'
end
