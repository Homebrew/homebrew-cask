cask 'double-commander' do
  version '0.7.7-7285'
  sha256 '2a5e895184f2bf90ed7a0f3efe953c40ebe62d94b271bba6e862f93684d57597'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: '24268c5e937dae55f02dd178db4a3c84c144b5efd9a2dfd8053a29e5a7b4d1b4'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'

  app 'Double Commander.app'
end
