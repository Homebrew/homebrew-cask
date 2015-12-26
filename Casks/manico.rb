cask 'manico' do
  version '2.0'
  sha256 '121458b99fbf3a11bc248e2922e73cd98d03409e343690d280a49903c38c79ce'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-appcast.xml',
          :sha256 => 'cbdf604b5078b58c559ed17759f2db444a5ec417bc8e663e024df735bc9d96fb'
  name 'Manico'
  homepage 'http://manico.im/'
  license :commercial

  app 'Manico.app'
end
