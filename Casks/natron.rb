cask 'natron' do
  version '2.3.12'
  sha256 '8de9937134119c365ec592a5ed813b969dd1170d75b2d02b78f73c8290e1346e'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/NatronGithub/Natron/releases.atom'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
