cask 'nrf5x-command-line-tools' do
  version '8.2.0'
  sha256 '22c217ce3ef64a1e85d1ec339692fc9eed73ca8a9011cb0b21ddcd5e5bfc84ad'

  url 'http://www.nordicsemi.com/eng/nordic/download_resource/53406/1/8099423'
  name 'nRF5x Command Line Tools'
  homepage 'http://www.nordicsemi.com/eng/nordic/Products/nRF52832/nRF5x-Command-Line-Tools-OSX/53406'
  license :gratis

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
