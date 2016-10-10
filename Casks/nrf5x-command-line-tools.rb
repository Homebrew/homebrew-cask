cask 'nrf5x-command-line-tools' do
  version '9.0.0'
  sha256 '9d568db6552d64eb65aa5d04241d0179fe67828e01b98c5c6de0760ad9993ef6'

  url 'https://www.nordicsemi.com/eng/nordic/download_resource/53406/6/73591027'
  name 'nRF5x Command Line Tools'
  homepage 'https://www.nordicsemi.com/eng/nordic/Products/nRF51-DK/nRF5x-Command-Line-Tools-OSX/53412'

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
