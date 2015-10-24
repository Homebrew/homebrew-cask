cask :v1 => 'gramps' do
  version '4.2.1-1'
  sha256 '9672a1cdde835ccdd1ab130019f2a71877991e0b75d3b6f02eb4b5fc68e3dec6'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/gramps/Stable/#{version.sub(%r{-\d},'')}/Gramps-Intel-#{version}.dmg"
  name 'Gramps'
  homepage 'https://gramps-project.org/'
  license :gpl

  app 'Gramps.app'
end
