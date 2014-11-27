cask :v1 => 'manico' do
  version '1.4.3'
  sha256 '8116d5906d97d3725dd3b6ebcf19f992db093da4e236adee2b47b0ed6fc2d6ea'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-appcast.xml',
          :sha256 => 'cbdf604b5078b58c559ed17759f2db444a5ec417bc8e663e024df735bc9d96fb'
  homepage 'http://manico.im/'
  license :unknown

  app 'Manico.app'
end
