cask 'progressive-downloader' do
  version '1.11'
  sha256 'ec6417e6bdc132eefbbc60577146d7b3b413ab539d00048c146406d78c9405a6'

  url "http://www.macpsd.net/update/#{version}/PSD.dmg"
  name 'Progressive Downloader'
  homepage 'http://www.macpsd.net'
  license :gratis

  app 'Progressive Downloader.app'
end
