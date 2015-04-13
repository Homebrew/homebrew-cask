cask :v1 => 'krita' do
  version '2.9.0.0'
  sha256 'f7a30e808ebb9b781a146d2491d1b9cfb07d39db805867da63252e61d73a2ad0'

  # download dmg from kde official repository
  url "http://download.kde.org/stable/krita/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'
  license :gpl

  app 'Krita.app'
end
