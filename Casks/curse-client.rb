cask :v1 => 'curse-client' do
  version 'latest'
  sha256 'f76eda5d21b85ee4db080c794a3e852ecadaa71fe2d32308d698d95286f36a1f'

  url 'http://www.curseforge.com/projects/curse-client-osx/latest-beta.dmg'
  name 'Curse Client'
  homepage 'http://www.curse.com/client'
  license :freemium

  app 'Curse Client.app'
end
