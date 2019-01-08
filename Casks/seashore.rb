cask 'seashore' do
  version '2.1.5'
  sha256 '223fa54991af62eda5254ad96936f696adbf8d34912ce814d5de285376fec35c'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
