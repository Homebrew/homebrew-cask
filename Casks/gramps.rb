cask :v1 => 'gramps' do
  version '4.1.2-1'
  sha256 'a3eb96d37431a3a6766027452baeafa77c26ac3651b4992a3a2db42e12835b72'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/gramps/Stable/#{version.sub(%r{-\d},'')}/Gramps-Intel-#{version}.dmg"
  name 'Gramps'
  homepage 'https://gramps-project.org/'
  license :gpl

  app 'Gramps.app'
end
