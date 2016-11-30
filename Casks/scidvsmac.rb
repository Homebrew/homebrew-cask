cask 'scidvsmac' do
  version '4.17'
  sha256 'b7895ff348597f581ff172001431f4fdb2df7926501937ec5e13c6d55425e744'

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scidvspc/rss',
          checkpoint: '165fb2aa11d6d9cda49ea3b4a5d298d56ac0588ca40c21e9ec73ed429cca5a68'
  name 'Scid vs. Mac'
  homepage 'http://scidvspc.sourceforge.net/'

  app 'ScidvsMac.app'
end
