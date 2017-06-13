cask 'michaelvillar-timer' do
  version '1.3'
  sha256 '932c51f286993a6ebda1b9f73dc36d5c6c3024a8851994a1915644bc308bc21d'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast 'https://github.com/michaelvillar/timer-app/releases.atom',
          checkpoint: '80dbaedd30f85751f3ee872003104e8f89dfc179c066157ff80a1e692ca1e203'
  name 'Timer'
  homepage 'https://github.com/michaelvillar/timer-app'

  app 'Timer.app'
end
