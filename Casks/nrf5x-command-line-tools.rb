cask 'nrf5x-command-line-tools' do
  version '9.1.0'
  sha256 '6fbbcde29267191c5874101aceda67b25b8c075bcf06450ae02a688e2fd58af6'

  url 'https://www.nordicsemi.com/eng/nordic/download_resource/53406/7/88118096'
  name 'nRF5x Command Line Tools'
  homepage 'https://www.nordicsemi.com/eng/nordic/Products/nRF51-DK/nRF5x-Command-Line-Tools-OSX/53412'

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
