cask :v1 => 'hedgewars' do
  version '0.9.21'
  sha256 '61ca4d3a709143927559e33fa935620ca32467e0adf0728f9214cba9a6fe6966'

  # gna.org is the official download host per the vendor homepage
  url "http://download.gna.org/hedgewars/Hedgewars-#{version}.dmg"
  appcast 'http://www.hedgewars.org/download/appcast.xml',
          :sha256 => 'bb5344972d01c4007ab4d8193fc2aaaebe68c4048213a10ba6b4cbc61210747f'
  name 'Hedgewars'
  homepage 'http://hedgewars.org'
  license :gpl

  app 'Hedgewars.app'
end
