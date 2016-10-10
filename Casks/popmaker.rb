cask 'popmaker' do
  version '0.1'
  sha256 '2c24014bdca713969d49227ed6eceae0072a933421d8d60f7162f4bd4c5ac947'

  url "http://cdn3.brettterpstra.com/downloads/PopMaker#{version}.zip"
  name 'PopMaker'
  homepage 'http://brettterpstra.com/2014/05/12/popmaker-popclip-extension-generator/'

  app 'PopMaker.app'
end
