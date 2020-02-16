cask 'seashore' do
  version '2.5.7'
  sha256 '05e94d6842093948a4f0f0d65f7b58973b6d741af59394f7df0a664eea95e394'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
