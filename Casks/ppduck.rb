cask 'ppduck' do
  version '3.7.1'
  sha256 '6fef89f5d7d83fc0d787cd414a149bca91ef7b99f1473fd18cd69e2ac76c2b4a'

  url "http://download.ppduck.com/PPDuck#{version.major}_#{version}.dmg"
  name 'PPDuck'
  homepage 'https://www.ppduck.com/'

  app "PPDuck#{version.major}.app"
end
