class MusicManager < Cask
  version '1.0.104.6528'
  sha256 'a1e4e48e008958f9a725bfee1e2d8360dc8efad38ef2532fc1b3e4b9c3df8f0d'

  url 'https://dl.google.com/dl/androidjumper/mac/1046528/musicmanager.dmg'
  homepage 'https://play.google.com/music/'

  app 'MusicManager.app', :target => 'Music Manager.app'
end
