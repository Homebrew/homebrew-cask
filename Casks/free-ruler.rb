cask 'free-ruler' do
  version '1.7b5'
  sha256 'f746e49ae012bee5ccef9871592276de47d3b6affbe92ab3f45f2591cb05b915'

  url "http://www.pascal.com/software/freeruler/FreeRuler#{version}.zip"
  name 'Free Ruler'
  homepage 'http://www.pascal.com/software/freeruler/'
  license :gratis

  app "Free Ruler #{version}.app"
end
