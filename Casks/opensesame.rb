cask 'opensesame' do
  if MacOS.version <= :snow_leopard
    version '0.26'
    sha256 'b2a37cfd1c514b2ae8ddd0be09a274844420bfa432318ef87df308fdd3b6a770'
    url "http://files.cogsci.nl/software/opensesame/opensesame_#{version}-macos-2.zip"
  else
    version '3.1.1'
    sha256 '5026513618ac050db8c9e49ecf552369eef77bcaf331f2bf7407e34730857972'
    # github.com/smathot/OpenSesame was verified as official when first introduced to the cask
    url "https://github.com/smathot/OpenSesame/releases/download/release/#{version}/opensesame_#{version}-py2.7-macos-1.dmg"
    appcast 'https://github.com/smathot/OpenSesame/releases.atom',
            checkpoint: 'b7e60c19cac63d61ad07c18092d47e16e74ce6b11df6b8d972c22fd79812e9b2'
  end

  name 'OpenSesame'
  homepage 'http://osdoc.cogsci.nl/'
  license :gpl

  app 'opensesame.app'
end
