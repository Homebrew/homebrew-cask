cask :v1 => 'krita' do
  version '2.9.6.1'
  sha256 '0ae0e8730c27da02b89302061d8b78415f5d542184ed14ae0c2ee80ba9ccd754'

  # download dmg from kde official repository
  url "http://files.kde.org/krita/osx/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'
  license :gpl

  app 'Krita.app'
end
