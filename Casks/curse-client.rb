class CurseClient < Cask
  version '4.0.0.425'
  sha256 'f76eda5d21b85ee4db080c794a3e852ecadaa71fe2d32308d698d95286f36a1f'

  url 'http://addons.cursecdn.com/files/595/169/Curse_Client-4.0.0.425.dmg'
  appcast 'http://www.curseforge.com/projects/curse-client-osx/sparkle.xml?type=b'
  homepage 'http://www.curse.com/client'

  link 'Curse Client.app'
end
