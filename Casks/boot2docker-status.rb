cask :v1 => 'boot2docker-status' do
  version '1.0.0'
  sha256 '95b05b0a9b2047c7e2df6f649f322da70b59b1054ae586e82f1d6c741ede40de'

  url "https://github.com/nickgartmann/boot2docker-status/releases/download/#{version}/Boot2Docker.Status-v#{version}.zip"
  appcast 'https://github.com/nickgartmann/boot2docker-status/releases.atom'
  name 'Boot2Docker Status'
  homepage 'http://boot2docker-status.nickgartmann.com'
  license :apache

  app 'Boot2Docker Status.app'

  uninstall :quit => 'RokkinCat.Boot2Docker-Status'
end
