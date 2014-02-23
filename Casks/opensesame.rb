class Opensesame < Cask
  if MacOS.version == :snowleopard
    url 'http://files.cogsci.nl/software/opensesame/opensesame_0.26-macos-2.zip'
    version '0.26'
    sha256 'b2a37cfd1c514b2ae8ddd0be09a274844420bfa432318ef87df308fdd3b6a770'
  else
    url 'http://www.cogsci.nl/dschreij/opensesame-mac/opensesame-0.27.4-macos-x86_64-1.dmg'
    version '0.27.4'
    sha256 '8814da8fe5e638cb7db18b4e8188fc97028bd98f1603ceae006aff13745fc739'
  end
  homepage 'http://osdoc.cogsci.nl/'
  link 'opensesame.app'
end
