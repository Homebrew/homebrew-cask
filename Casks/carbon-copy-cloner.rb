cask 'carbon-copy-cloner' do
  version '3.4.7'
  sha256 '4ea19d1c9111fb67b0f7567844a413794bd2d3b6a908a8921cabd10f21101247'

  url "http://www.bombich.com/software/download_ccc_update.php?v=#{version}"
  appcast 'https://bombich.com/software/updates/ccc.php',
          checkpoint: 'eec027f0d0aa576e292b4fe57441f1821409c6295330787dd82533b0d483cb26'
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'
  license :commercial

  app 'Carbon Copy Cloner.app'
end
