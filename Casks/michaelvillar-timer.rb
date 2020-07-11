cask 'michaelvillar-timer' do
  version '1.5.4'
  sha256 '1e993fde9f3a443e981494792d9159e81ce407fb984f4a40d595035eccf6159d'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast 'https://github.com/michaelvillar/timer-app/releases.atom'
  name 'Timer'
  homepage 'https://github.com/michaelvillar/timer-app'

  app 'Timer.app'
end
