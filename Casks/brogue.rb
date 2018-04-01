cask 'brogue' do
  version '1.7.4'
  sha256 '37d21caecb8ced7e984638227937d0285df3742b6a34a7ca6c7a60355d0e9026'

  url "https://sites.google.com/site/broguegame/Brogue%20v#{version}%20OS%20X.zip?attredirects=0&d=1"
  name 'Brogue'
  homepage 'https://sites.google.com/site/broguegame/'

  app "Brogue v#{version}/Brogue.app"
end
