cask :v1 => 'curse-client' do
  version '4.0.0.425'
  sha256 'f76eda5d21b85ee4db080c794a3e852ecadaa71fe2d32308d698d95286f36a1f'

  url "http://addons.cursecdn.com/files/595/169/Curse_Client-#{version}.dmg"
  appcast 'http://www.curseforge.com/projects/curse-client-osx/sparkle.xml?type=b',
          :sha256 => '380ae573d8a2b44f5148df8821f3cff258b930116f7be86a23f4a0b4259348ec'
  homepage 'http://www.curse.com/client'
  license :unknown    # todo: improve this machine-generated value

  app 'Curse Client.app'
end
