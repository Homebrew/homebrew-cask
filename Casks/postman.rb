cask 'postman' do
  version '3.2.15.1'
  sha256 '7b600a2aba09ab2ff49398fd58315c28c2525875f25a3cd28b37489f9a94bd0e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/postman-electron-builds/mac/postman-osx-#{version}.zip"
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
