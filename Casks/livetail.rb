cask 'livetail' do
  version '1.0'
  sha256 '40cc322b1f31ab9189798d4bb193d1eb43d00c95906bdb863dadefc72f4a839c'

  url "https://github.com/SumoLogic/livetail-cli/releases/download/v#{version}/livetail_mac_os.zip"
  appcast 'https://github.com/SumoLogic/livetail-cli/releases.atom',
          checkpoint: 'beadbf08fd78c786ffad244d9cd442013797505862f5d11975a48257476c486c'
  name 'Sumologic livetail CLI'
  homepage 'https://github.com/SumoLogic/livetail-cli'

  binary 'livetail'
end
