cask 'livetail' do
  version '1.0'
  sha256 '40cc322b1f31ab9189798d4bb193d1eb43d00c95906bdb863dadefc72f4a839c'

  url "https://github.com/SumoLogic/livetail-cli/releases/download/v#{version}/livetail_mac_os.zip"
  appcast 'https://github.com/SumoLogic/livetail-cli/releases.atom',
          checkpoint: 'f800c5aa6f95542b178d7f91aa5c9285fdf8dac1f48ed11b215f14f2136d2cda'
  name 'Sumologic livetail CLI'
  homepage 'https://github.com/SumoLogic/livetail-cli'

  binary 'livetail'
end
