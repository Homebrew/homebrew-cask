cask 'free-ruler' do
  version '1.7b5'
  sha256 'f746e49ae012bee5ccef9871592276de47d3b6affbe92ab3f45f2591cb05b915'

  url "http://www.pascal.com/software/freeruler/FreeRuler#{version}.zip"
  appcast 'http://www.pascal.com/software/freeruler/',
          checkpoint: '3c62b8299bd02a840a9263bcd0548b4ced6d029e96bebfbb411a6a0c962c30cf'
  name 'Free Ruler'
  homepage 'http://www.pascal.com/software/freeruler/'

  app "Free Ruler #{version}.app"
end
