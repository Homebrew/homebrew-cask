cask 'seashore' do
  version '2.4.10'
  sha256 'ffee7733e38e9f9b12f5734e6b4bd33cf5eb4ec4a32b9865ce72a523715bcf68'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
