cask 'opensesame' do
  if MacOS.release <= :snow_leopard
    version '0.26'
    sha256 'b2a37cfd1c514b2ae8ddd0be09a274844420bfa432318ef87df308fdd3b6a770'
    url "http://files.cogsci.nl/software/opensesame/opensesame_#{version}-macos-2.zip"
  else
    version '3.1.0'
    sha256 '7224d05e72a91d1514c64f1c1d1e417ac28ead8cf62ae06c3d1e9486448302bf'
    # github.com/smathot/OpenSesame was verified as official when first introduced to the cask
    url "https://github.com/smathot/OpenSesame/releases/download/release/#{version}/opensesame_#{version}-py2.7-macos-2.dmg"
    appcast 'https://github.com/smathot/OpenSesame/releases.atom',
            checkpoint: '976508aa8adac9f95d190cdea3dfc78745fe68834d9d8da36eab694e884b49df'
  end

  name 'OpenSesame'
  homepage 'http://osdoc.cogsci.nl/'
  license :gpl

  app 'opensesame.app'
end
