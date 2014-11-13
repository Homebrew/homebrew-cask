cask :v1 => 'brogue' do
  version '1.7.3'
  sha256 'a8b6cc384bc0d7a63c60c7675a43fc672d621d03d5eb400b11749a1b1b5ca78f'

  url "https://sites.google.com/site/broguegame/Brogue%20OS%20X%2010.6%2B%20v#{version}.zip?attredirects=0&d=1"
  homepage 'https://sites.google.com/site/broguegame/'
  license :affero

  app "Brogue v#{version}/Brogue.app"
end
