cask 'izip' do
  version '3.3'
  sha256 'd51cd6a698cb40a02f6930dd374a85bac6f78cb5d104a60476c9aefd45239329'

  url "http://www.izip.com/izip_update_#{version.no_dots}.zip"
  appcast 'https://www.izip.com/updates'
  name 'iZip'
  homepage 'https://www.izip.com/'

  app 'iZip.app'
end
