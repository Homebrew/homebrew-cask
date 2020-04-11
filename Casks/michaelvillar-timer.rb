cask 'michaelvillar-timer' do
  version '1.5.0'
  sha256 '42f96d58b3c3f80b6f4e3aa92ce5894b7c8bbe0b91ec8c3ca1fef1f333d0b261'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast 'https://github.com/michaelvillar/timer-app/releases.atom'
  name 'Timer'
  homepage 'https://github.com/michaelvillar/timer-app'

  app 'Timer.app'
end
