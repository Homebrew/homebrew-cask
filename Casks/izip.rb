cask 'izip' do
  version '3.3'
  sha256 '3b0d8a8540fe0cfd98fe0d772fb30d9b8ececf0b16cea3fc21fbb266b93a7e6b'

  url "http://www.izip.com/izip_update_#{version.no_dots}.zip"
  appcast 'https://www.izip.com/updates'
  name 'iZip'
  homepage 'https://www.izip.com/'

  app 'iZip.app'
end
