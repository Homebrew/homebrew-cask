cask 'back-in-time' do
  version '5.1.2'
  sha256 '7a7bc1c0cead6f4b06320e571363364ff279e874f3880701310296242c3bce9c'

  url "https://www.tri-edre.com/pub/files/backintime#{version.major}.dmg"
  appcast 'https://www.tri-edre.com/news/backintimeen.html'
  name 'Back-In-Time'
  homepage 'https://www.tri-edre.com/english/backintime.html'

  app "Back-In-Time #{version.major}.app"
end
