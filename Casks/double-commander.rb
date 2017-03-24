cask 'double-commander' do
  version '0.7.8-7400'
  sha256 'eae048a34b79bc0b03cf06c1092a580796a618e4a9b3fc8046719a4536d8f71e'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: 'f848918b77c267414fb0eb34f97053a2316cc4ae0eed54483dcd968c5f74a31a'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'

  app 'Double Commander.app'
end
