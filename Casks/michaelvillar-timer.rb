cask 'michaelvillar-timer' do
  version '1.2'
  sha256 'e34939a84842c4cec3d158459be374244013c5bf1fedeb24ea726d31b00e936f'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast 'https://github.com/michaelvillar/timer-app/releases.atom',
          checkpoint: '0c880efc3de78af9919409f9279fcb2792155c068cae33eee78165ff4a08ed2b'
  name 'Timer'
  homepage 'https://github.com/michaelvillar/timer-app'

  app 'Timer.app'
end
