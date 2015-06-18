cask :v1 => 'manico' do
  version '1.4.4'
  sha256 '5ed0a86c5597d98d0eab107c95824781d77654ff7224425f9c63134ab996ff01'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-appcast.xml',
          :sha256 => 'cbdf604b5078b58c559ed17759f2db444a5ec417bc8e663e024df735bc9d96fb'
  name 'Manico'
  homepage 'http://manico.im/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Manico.app'
end
