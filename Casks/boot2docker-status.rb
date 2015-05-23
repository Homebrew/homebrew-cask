cask :v1 => 'boot2docker-status' do
  version '1.1.0'
  sha256 'ce16ce45def874edacc719ff5ef6b79655011adbb3284da13bc3fef7e09dbcd2'

  url "http://boot2docker-status.nickgartmann.com/Boot2Docker%20Status-v#{version}.zip"
  name 'Boot2Docker Status'
  homepage 'http://boot2docker-status.nickgartmann.com'
  license :apache

  app 'Boot2Docker Status.app'

  uninstall :quit => 'RokkinCat.Boot2Docker-Status'
end
