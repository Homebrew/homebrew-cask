cask 'michaelvillar-timer' do
  version '1.5.1'
  sha256 'c5f1bbbad6df63152cc0955a6bdc1c19f6caa570fd517a742a75e5453f01d9a3'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast 'https://github.com/michaelvillar/timer-app/releases.atom'
  name 'Timer'
  homepage 'https://github.com/michaelvillar/timer-app'

  app 'Timer.app'
end
