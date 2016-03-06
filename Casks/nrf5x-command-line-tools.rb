cask 'nrf5x-command-line-tools' do
  version '8.3.0'
  sha256 'd058ccb0bfcf42ecd125816eea2f7660e402890de3dc091dd02d34099565aef8'

  url 'https://www.nordicsemi.com/eng/nordic/download_resource/53412/2/81897173'
  name 'nRF5x Command Line Tools'
  homepage 'http://www.nordicsemi.com/eng/nordic/Products/nRF51-DK/nRF5x-Command-Line-Tools-OSX/53412'
  license :gratis

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
