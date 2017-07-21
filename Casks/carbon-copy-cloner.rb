cask 'carbon-copy-cloner' do
  version '4.1.17.4577'
  sha256 'fc26ed71558ae20e298c1bb203714fd9214c63495614cb6457b57e968291e0c9'

  url "https://bombich.com/software/download_ccc.php?v=#{version}"
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'
end
