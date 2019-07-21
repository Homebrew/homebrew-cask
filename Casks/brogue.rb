cask 'brogue' do
  version '1.7.5'
  sha256 '34987d3b2d3b763e02cc4ef32166fc212c07f403f9e15af2ce6e490b88cdcf2b'

  url "https://sites.google.com/site/broguegame/Brogue-mac-v#{version}.zip?attredirects=0&d=1"
  appcast 'https://sites.google.com/site/broguegame/'
  name 'Brogue'
  homepage 'https://sites.google.com/site/broguegame/'

  app "Brogue v#{version}/Brogue.app"
end
