cask 'michaelvillar-timer' do
  version '1.5.3'
  sha256 'db4aa47e11b557dc4733153b452e7acb6bd67c9836e3bc829fb751e07db075b1'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast 'https://github.com/michaelvillar/timer-app/releases.atom'
  name 'Timer'
  homepage 'https://github.com/michaelvillar/timer-app'

  app 'Timer.app'
end
