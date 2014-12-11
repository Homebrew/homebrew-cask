cask :v1 => 'gramps' do
  version '4.1.1-1'
  sha256 'b61b6db6e1392c65d4e49c06969c57d23e7a504f3fda0dfcf7c0492db85f19b1'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/gramps/Stable/#{version.sub(%r{-\d},'')}/Gramps-Intel-#{version}.dmg"
  homepage 'https://gramps-project.org/'
  license :oss

  app 'Gramps.app'
end
