cask :v1 => 'krita' do
  version '2.9.7.4'
  sha256 'ba8fec59b200f59cead036ff370f2013337a36780708c02e882987c708f8b963'

  # download dmg from kde official repository
  url "http://files.kde.org/krita/osx/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'
  license :gpl

  app 'Krita.app'
end
