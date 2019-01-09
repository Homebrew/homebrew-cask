cask 'cuteclips' do
  version '3.1.23'
  sha256 '265e9a90f8d0543bc9f1cc8e9a9b970ebdda7284ed0799e351731cdd5f59665d'

  url "http://cuteclips3.com/builds/CuteClips#{version.major}-#{version}.dmg"
  appcast 'http://cuteclips3.com/'
  name 'CuteClips'
  homepage 'http://cuteclips3.com/'

  app "CuteClips#{version.major}.app"
end
