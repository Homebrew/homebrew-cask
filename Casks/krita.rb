cask :v1 => 'krita' do
  version '2.9.7.5'
  sha256 'b810ca955d8e9c8e7d5491cf06f78b491522d637123df6c4fcdc863240cd6082'

  # kde.org is the official download host per the vendor homepage
  url "http://files.kde.org/krita/osx/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'
  license :gpl

  app 'Krita.app'
end
