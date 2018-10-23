cask 'black-light' do
  version '2.3.4'
  sha256 'cf405f89e36b81154f7cb2a71f5fe5ab837a852528dcbe42fa60bc37b564ae78'

  url "https://littoral.michelf.ca/apps/black-light/black-light-#{version}.zip"
  name 'Black Light'
  homepage 'https://michelf.ca/projects/black-light/'

  app 'Black Light.app'
end
