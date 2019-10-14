cask 'free-ruler' do
  version '2.0.1'
  sha256 '0ec0b4d62b7b9be17412d00d3eb045e4f574d6b0e1f725ad569740a983249685'

  # github.com/pascalpp/FreeRuler was verified as official when first introduced to the cask
  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip"
  appcast 'https://github.com/pascalpp/FreeRuler/releases.atom'
  name 'Free Ruler'
  homepage 'http://www.pascal.com/software/freeruler/'

  app 'Free Ruler.app'
end
