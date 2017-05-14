cask 'opensesame' do
  if MacOS.version <= :snow_leopard
    version '0.26'
    sha256 'b2a37cfd1c514b2ae8ddd0be09a274844420bfa432318ef87df308fdd3b6a770'
    url "https://files.cogsci.nl/software/opensesame/opensesame_#{version}-macos-2.zip"
  else
    version '3.1.6'
    sha256 '6b9bd3a88a09bfefdb1697a9524c508a7fa615792468f7f69ee25818f17ddc19'
    # github.com/smathot/OpenSesame was verified as official when first introduced to the cask
    url "https://github.com/smathot/OpenSesame/releases/download/release/#{version}/opensesame_#{version}-py2.7-macos-1.dmg"
    appcast 'https://github.com/smathot/OpenSesame/releases.atom',
            checkpoint: '7024bbce26aa87d4a4f889ed99f08463d120491b085fdba1163f69da98b415a6'
  end

  name 'OpenSesame'
  homepage 'https://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
