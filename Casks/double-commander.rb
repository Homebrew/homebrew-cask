cask 'double-commander' do
  version '0.7.8-7400'
  sha256 'eae048a34b79bc0b03cf06c1092a580796a618e4a9b3fc8046719a4536d8f71e'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: '7d61cd97bb46ff40d2ab5bc5de77817d7f8994b706ef10209d8b048a42ad1627'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'

  app 'Double Commander.app'
end
