cask :v1 => 'darktable' do
  version '1.6.2'
  sha256 'bd613994c9754313144e8804026b7faf672fa816801b687ff7d64a8d82880332'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  name 'darktable'
  homepage 'http://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
