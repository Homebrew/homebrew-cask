cask :v1 => 'manico' do
  version '1.4.2'
  sha256 '5244586f0b7568e654175940a2052a4b746a1122ecea3eba08e4470c5b4f3095'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-appcast.xml',
          :sha256 => 'cbdf604b5078b58c559ed17759f2db444a5ec417bc8e663e024df735bc9d96fb'
  homepage 'http://manico.im/'
  license :unknown

  app 'Manico.app'
end
