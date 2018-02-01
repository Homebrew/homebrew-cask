cask 'livetail' do
  version '2.0'
  sha256 '960977b45cb758e629e3d9e352a57caef655ce1a312890dcceaa2754c24056a0'

  url "https://github.com/SumoLogic/livetail-cli/releases/download/#{version}/livetail_mac_os.zip"
  appcast 'https://github.com/SumoLogic/livetail-cli/releases.atom',
          checkpoint: 'f800c5aa6f95542b178d7f91aa5c9285fdf8dac1f48ed11b215f14f2136d2cda'
  name 'Sumologic livetail CLI'
  homepage 'https://github.com/SumoLogic/livetail-cli'

  binary 'livetail'
end
