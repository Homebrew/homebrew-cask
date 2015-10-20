cask :v1 => 'darktable' do
  version '1.6.8'
  sha256 'ec4b1ad797ea7a483d7fc94724de99a1d18da7d7f75071220e1d313e0a4d8a53'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'http://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
