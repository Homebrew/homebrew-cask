cask :v1 => 'music-manager' do
  version '1.0.104.6528'
  sha256 'a1e4e48e008958f9a725bfee1e2d8360dc8efad38ef2532fc1b3e4b9c3df8f0d'

  url "https://dl.google.com/dl/androidjumper/mac/#{version.sub(%r{^\d+\.\d+\.},'').gsub('.','')}/musicmanager.dmg"
  homepage 'https://play.google.com/music/'
  license :unknown    # todo: improve this machine-generated value

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/4282
  app 'MusicManager.app', :target => 'Music Manager.app'
end
