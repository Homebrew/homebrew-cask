cask :v1 => 'krita' do
  version '2.9.9.0'
  sha256 '9a4ef8e39f170ba3e81663f7049f1f136920048834628ff5cdd1cd0a4ec6b0b7'

  # kde.org is the official download host per the vendor homepage
  url "http://files.kde.org/krita/osx/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'
  license :gpl

  app 'Krita.app'
end
