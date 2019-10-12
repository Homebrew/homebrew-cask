cask 'free-ruler' do
  version '2.0.1'
  sha256 '0ec0b4d62b7b9be17412d00d3eb045e4f574d6b0e1f725ad569740a983249685'

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip"
  appcast 'http://www.pascal.com/software/freeruler/'
  name 'Free Ruler'
  homepage 'http://www.pascal.com/software/freeruler/'

  app "Free Ruler #{version}.app"
end
