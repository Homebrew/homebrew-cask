cask 'michaelvillar-timer' do
  version '1.4'
  sha256 '727bc75da07f99547700efb8b133a65ae792d88e1fad684aab1d5c319fbe4580'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast 'https://github.com/michaelvillar/timer-app/releases.atom'
  name 'Timer'
  homepage 'https://github.com/michaelvillar/timer-app'

  app 'Timer.app'
end
