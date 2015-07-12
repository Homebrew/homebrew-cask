cask :v1 => 'biba' do
  version '3.2.3350'
  sha256 '6d340ef45bf3e85f718d09d6df6e9309dbc9912bff96e0569647606089cc16f2'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  name 'Biba'
  appcast 'https://biba.com/osx_downloads/appcast',
          :sha256 => '1ba615b670b0bc57c1ceef52a86399dfc848cff92a9e7f13f6e628217972d1db'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
