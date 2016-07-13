cask 'opensesame' do
  if MacOS.release <= :snow_leopard
    version '0.26'
    sha256 'b2a37cfd1c514b2ae8ddd0be09a274844420bfa432318ef87df308fdd3b6a770'
    url "http://files.cogsci.nl/software/opensesame/opensesame_#{version}-macos-2.zip"
  else
    version '3.1.0'
    sha256 ''
    url "https://github.com/smathot/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py2.7-macos-2.dmg"
  end

  name 'OpenSesame'
  homepage 'http://osdoc.cogsci.nl/'
  license :gpl

  app 'opensesame.app'
end
