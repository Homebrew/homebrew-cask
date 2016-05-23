cask 'sumologic-livetail-cli' do
  version '1.0'
  sha256 '40cc322b1f31ab9189798d4bb193d1eb43d00c95906bdb863dadefc72f4a839c'

  url 'https://github.com/SumoLogic/livetail-cli/releases/download/v1.0/livetail_mac_os.zip'
  name 'Sumologic livetail CLI'
  homepage 'https://github.com/SumoLogic/livetail-cli'
  license :commercial

  binary 'livetail'
end
