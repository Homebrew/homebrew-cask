cask :v1 => 'kullo' do
  version '0.20.14'
  sha256 '93be84bfe9941c8f7b4f1ebd0628166efdf8238f2d3d4ecf6e218fabb8c39db0'

  url "https://www.kullo.net/download/files/osx/Kullo-#{version}.dmg"
  name 'Kullo'
  homepage 'https://www.kullo.net/'
  license :gratis

  app 'Kullo.app'
end
