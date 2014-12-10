cask :v1 => 'cocoasplit' do
  version :latest
  sha256 :no_check

  url 'http://krylon.rsdio.com/zakk/cocoasplit/CocoaSplit-current.zip'
  homepage 'http://krylon.rsdio.com/zakk/cocoasplit/'
  license :unknown    # todo: improve this machine-generated value

  app 'CocoaSplit.app'
end
