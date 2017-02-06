cask 'cuteclips' do
  version '3.1.23'
  sha256 '265e9a90f8d0543bc9f1cc8e9a9b970ebdda7284ed0799e351731cdd5f59665d'

  url "http://cuteclips3.com/builds/CuteClips#{version.major}-#{version}.dmg"
  appcast 'http://cuteclips3.com/cuteclipsappcast.xml',
          checkpoint: 'e43a4c4e0d87fa3fd2ffee4ea88fa5ad3263e4c423b41f86465f48cbddb12135'
  name 'CuteClips'
  homepage 'http://cuteclips3.com'

  app "CuteClips#{version.major}.app"
end
