cask 'opensesame' do
  if MacOS.version <= :snow_leopard
    version '0.26'
    sha256 'b2a37cfd1c514b2ae8ddd0be09a274844420bfa432318ef87df308fdd3b6a770'
    url "https://files.cogsci.nl/software/opensesame/opensesame_#{version}-macos-2.zip"
  else
    version '3.2.2'
    sha256 '02fbe080c163cef1060f927a0d9fde9a2b787bf59e249be098de384cb58f6952'
    # github.com/smathot/OpenSesame was verified as official when first introduced to the cask
    url "https://github.com/smathot/OpenSesame/releases/download/release/#{version}/opensesame_#{version}-py2.7-macos-1.dmg"
    appcast 'https://github.com/smathot/OpenSesame/releases.atom',
            checkpoint: '313b8f7ef7123f624f4e38f60f89ac66b249834a714c79f4fc702731728594e0'
  end

  name 'OpenSesame'
  homepage 'https://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
