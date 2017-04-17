cask 'nrf5x-command-line-tools' do
  version '53412.12.75215164'
  sha256 '40342170b40cc4a930b695a3695f1b47b29d4ba1362af280a74f6cbbbf1c925d'

  url "https://www.nordicsemi.com/eng/nordic/download_resource/#{version.major}/#{version.minor}/#{version.patch}"
  name 'nRF5x Command Line Tools'
  homepage 'https://www.nordicsemi.com/eng/nordic/Products/nRF51-DK/nRF5x-Command-Line-Tools-OSX/53412'

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
