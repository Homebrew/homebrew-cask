cask 'michaelvillar-timer' do
  version '1.1.0'
  sha256 'e0d75fbcd65b54127810b47ff06db4cb8be1b37585969155e3c00d2a7a482f24'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast 'https://github.com/michaelvillar/timer-app/releases.atom',
          checkpoint: '3d6519704a0620edb1f5e59ee7bb98f236bbcc496c28be53728616a3930ce4f7'
  name 'Timer'
  homepage 'https://github.com/michaelvillar/timer-app'

  app 'Timer.app'
end
