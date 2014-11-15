cask :v1 => 'progressive-downloader' do
  version '1.7.2'
  sha256 '84cb20dbb3fa1be6d3e7ba0d4563f9001f210030010b56a9e5b4c3419264f13e'

  url "http://www.macpsd.net/update/#{version}/PSD.dmg"
  homepage 'http://www.macpsd.net'
  license :gratis

  app 'Progressive Downloader.app'
end
