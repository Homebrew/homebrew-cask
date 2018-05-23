cask 'livetail' do
  version '2.0'
  sha256 '960977b45cb758e629e3d9e352a57caef655ce1a312890dcceaa2754c24056a0'

  url "https://github.com/SumoLogic/livetail-cli/releases/download/#{version}/livetail_mac_os.zip"
  appcast 'https://github.com/SumoLogic/livetail-cli/releases.atom',
          checkpoint: '784e51f1fdbbaf2d732299f9b8cddc5f2242daa76d58814e26dc9162fc779c4d'
  name 'Sumologic livetail CLI'
  homepage 'https://github.com/SumoLogic/livetail-cli'

  binary 'livetail'
end
