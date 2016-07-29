cask 'progressive-downloader' do
  version '2.2.1'
  sha256 '7a27882727e54553eb553b2411bed45e73f36335eabb00b92a86c7a4a93b0aef'

  url "http://www.macpsd.net/update/#{version}/PSD.dmg"
  name 'Progressive Downloader'
  homepage 'http://www.macpsd.net'
  license :gratis

  app 'Progressive Downloader.app'
end
