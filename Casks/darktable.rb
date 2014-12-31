cask :v1 => 'darktable' do
  version '1.6.1'
  sha256 'fcb45835f703bc394072fd5ee1f043f44097e2f48843da1cbfc414c3103606d0'

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  homepage 'http://www.darktable.org/'
  license :oss

  app 'darktable.app'
end
