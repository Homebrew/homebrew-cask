cask 'opensesame' do
  if MacOS.version <= :snow_leopard
    version '0.26'
    sha256 'b2a37cfd1c514b2ae8ddd0be09a274844420bfa432318ef87df308fdd3b6a770'
    url "https://files.cogsci.nl/software/opensesame/opensesame_#{version}-macos-2.zip"
  else
    version '3.1.2'
    sha256 'f82fd0daf576784b04152e239bfaa633d5933af6273721c01d31ffa9b715353e'
    # github.com/smathot/OpenSesame was verified as official when first introduced to the cask
    url "https://github.com/smathot/OpenSesame/releases/download/release/#{version}/opensesame_#{version}-py2.7-macos-1.dmg"
    appcast 'https://github.com/smathot/OpenSesame/releases.atom',
            checkpoint: '958aa1f4116709f5caf4a8e8bae48b5866a28a23a6c544a15042cbf81f431b8f'
  end

  name 'OpenSesame'
  homepage 'http://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
