cask :v1 => 'opensesame' do

  if MacOS.version <= :snow_leopard
    version '0.26'
    sha256 'b2a37cfd1c514b2ae8ddd0be09a274844420bfa432318ef87df308fdd3b6a770'
    url "http://files.cogsci.nl/software/opensesame/opensesame_#{version}-macos-2.zip"
  else
    version '0.27.4'
    sha256 '8814da8fe5e638cb7db18b4e8188fc97028bd98f1603ceae006aff13745fc739'
    url "http://www.cogsci.nl/dschreij/opensesame-mac/opensesame-#{version}-macos-x86_64-1.dmg"
  end

  homepage 'http://osdoc.cogsci.nl/'
  license :unknown

  app 'opensesame.app'
end
