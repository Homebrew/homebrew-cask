cask 'carbon-copy-cloner' do
  version '5.0.5061'
  sha256 '1fcd53c453ece31d25f0b1d86b5ffff8590f267aa4355711458db1940c2fe74c'

  url "https://bombich.com/software/download_ccc.php?v=#{version}"
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'
end
