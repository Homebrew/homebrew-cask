cask 'natron' do
  version '2.3.13'
  sha256 '117aa5df7843a25e48941cd904236d510c679740b17c1eca98e94cccf7925e4c'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/NatronGithub/Natron/releases.atom'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
