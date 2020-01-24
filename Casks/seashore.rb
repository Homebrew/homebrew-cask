cask 'seashore' do
  version '2.5.4'
  sha256 'e1a903a57b6a1ce298c5594d91a7de4f6945c5dd8e36d666763da23d147ad05d'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
