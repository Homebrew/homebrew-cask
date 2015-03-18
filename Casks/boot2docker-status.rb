cask :v1 => 'boot2docker-status' do
  version '1.0.0'
  sha256 '95b05b0a9b2047c7e2df6f649f322da70b59b1054ae586e82f1d6c741ede40de'

  url "http://boot2docker-status.nickgartmann.com/Boot2Docker%20Status-v#{version}.zip"
  name 'Boot2Docker Status'
  homepage 'http://boot2docker-status.nickgartmann.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Boot2Docker Status.app'

  uninstall :quit => 'RokkinCat.Boot2Docker-Status'
end
