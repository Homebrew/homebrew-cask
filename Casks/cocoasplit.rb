cask 'cocoasplit' do
  version :latest
  sha256 :no_check

  url 'http://krylon.rsdio.com/zakk/cocoasplit/CocoaSplit-current.zip'
  name 'CocoaSplit'
  homepage 'http://krylon.rsdio.com/zakk/cocoasplit/'
  license :oss

  app 'CocoaSplit.app'
end
