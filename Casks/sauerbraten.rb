cask :v1 => 'sauerbraten' do
  version '2013.01.26'
  sha256 'c6807484fa0d2c42ac774b97f9b21e9eace720e4403abc11b0321b2645d3589d'

  url "http://downloads.sourceforge.net/sauerbraten/sauerbraten_#{version.gsub('.','_')}_collect_edition_macosx.dmg"
  homepage 'http://sauerbraten.org'
  license :oss

  app 'Sauerbraten.app'
end
