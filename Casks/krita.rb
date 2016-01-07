cask 'krita' do
  version '2.9.10.0'
  sha256 'b56ddb49bb84e7c6e42708d7dffd8a7ff032903e129dfb3a7bfd8fe0aaae20d7'

  # kde.org is the official download host per the vendor homepage
  url "https://files.kde.org/krita/osx/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'
  license :gpl

  app 'Krita.app'
end
