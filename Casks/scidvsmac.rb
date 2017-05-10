cask 'scidvsmac' do
  version '4.17'
  sha256 'b7895ff348597f581ff172001431f4fdb2df7926501937ec5e13c6d55425e744'

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scidvspc/rss',
          checkpoint: '8454afedfcb03d752e66f18834e714798ba0f9407416be1a834958f4eb582fce'
  name 'Scid vs. Mac'
  homepage 'http://scidvspc.sourceforge.net/'

  app 'ScidvsMac.app'
end
