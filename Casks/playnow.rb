cask 'playnow' do
  version '0.4'
  sha256 'c082bc144ca1991bf045ee5f416a0066c549e6adb35d49edf881a58f8dbec801'

  url "https://github.com/marcboquet/PlayNow/releases/download/v#{version}/PlayNow.tgz"
  appcast 'https://github.com/marcboquet/PlayNow/releases.atom',
          checkpoint: '78ad1ceb00ae216b3508c8b56e86b9bf8d2f8ca788714214d0165f016e367580'
  name 'PlayNow'
  homepage 'https://github.com/marcboquet/PlayNow/'

  app 'PlayNow.app'
end
