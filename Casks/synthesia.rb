cask 'synthesia' do
  version '10.2'
  sha256 'e36602bc84d1b923c7879f0e9716b30ba8f5892ee7bd062bd57bbcb8dc38d920'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg"
  name 'Synthesia'
  homepage 'https://www.synthesiagame.com'
  license :freemium

  app 'Synthesia.app'
end
