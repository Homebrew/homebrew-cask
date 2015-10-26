cask :v1 => 'krita' do
  version '2.9.8.0'
  sha256 'b07db99ca2bcdeb21c8d84dc17832ef7850be8008113184605c4bfbc33b9520f'

  # kde.org is the official download host per the vendor homepage
  url "http://files.kde.org/krita/osx/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'
  license :gpl

  app 'Krita.app'
end
