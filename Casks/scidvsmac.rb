cask 'scidvsmac' do
  version '4.17'
  sha256 'b7895ff348597f581ff172001431f4fdb2df7926501937ec5e13c6d55425e744'

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scidvspc/rss',
          checkpoint: '73abca4b5add3886939211cc51afe92f46f3df2ff8a29ca55645169bf1625097'
  name 'Scid vs. Mac'
  homepage 'http://scidvspc.sourceforge.net/'

  app 'ScidvsMac.app'
end
