cask 'popmaker' do
  version '0.2'
  sha256 'f1314838c6710a86be51c41f944f966847516f4a1815d7fd6cf98610cc9f3799'

  url "http://cdn3.brettterpstra.com/downloads/PopMaker#{version}.zip"
  name 'PopMaker'
  homepage 'http://brettterpstra.com/2014/05/12/popmaker-popclip-extension-generator/'

  app 'PopMaker.app'
end
