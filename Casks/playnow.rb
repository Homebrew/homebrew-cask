cask 'playnow' do
  version '0.4'
  sha256 'c082bc144ca1991bf045ee5f416a0066c549e6adb35d49edf881a58f8dbec801'

  url "https://github.com/marcboquet/PlayNow/releases/download/v#{version}/PlayNow.tgz"
  appcast 'https://github.com/marcboquet/PlayNow/releases.atom',
          checkpoint: '8be659cc2770e4252406cd5e58c800a1de4774dfd8f5e10b7c496350e273dd51'
  name 'PlayNow'
  homepage 'https://github.com/marcboquet/PlayNow/'

  app 'PlayNow.app'
end
