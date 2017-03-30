cask 'nrf5x-command-line-tools' do
  version '53402.11.65316563'
  sha256 '2a26e57a54a53ae7009f56041619ef6ea215f829aa75c9c35d1d45555f032a71'

  url "https://www.nordicsemi.com/eng/nordic/download_resource/#{version.major}/#{version.minor}/#{version.patch}"
  name 'nRF5x Command Line Tools'
  homepage 'https://www.nordicsemi.com/eng/nordic/Products/nRF51-DK/nRF5x-Command-Line-Tools-OSX/53412'

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
