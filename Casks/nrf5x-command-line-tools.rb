cask 'nrf5x-command-line-tools' do
  version '53406.17.93573317'
  sha256 '19c918e8fa44964d570721b204bf460451eabbc90030ccdc5f1eeb6513a0ace1'

  url "https://www.nordicsemi.com/eng/nordic/download_resource/#{version.major}/#{version.minor}/#{version.patch}"
  name 'nRF5x Command Line Tools'
  homepage 'https://www.nordicsemi.com/eng/nordic/Products/nRF51-DK/nRF5x-Command-Line-Tools-OSX/53412'

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
