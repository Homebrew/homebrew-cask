cask 'prizmo' do
  version '3.1.9'
  sha256 '4dc9d09655121ca6b5b6f08273524804bb9ddda345bd3fafb5f4e881b3bc43e1'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          checkpoint: '67f7f81fe7504cd71f51d9707e6f7fb76b054a21560db94ebe401d3c6205e304'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
