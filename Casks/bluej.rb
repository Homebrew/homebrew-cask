cask 'bluej' do
  version '3.1.7a'
  sha256 '5251c0a6cd389730f48a6c46f06acb39ca332eae7a557a32807e8695e36d37c8'

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name 'BlueJ'
  homepage 'https://www.bluej.org/'

  app "BlueJ #{version.sub(%r{[a-z]$}, '')}/BlueJ.app"
end
