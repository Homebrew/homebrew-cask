cask :v1 => 'cocoasplit' do
  version :latest
  sha256 :no_check

  url 'http://krylon.rsdio.com/zakk/cocoasplit/CocoaSplit-current.zip'
  homepage 'http://krylon.rsdio.com/zakk/cocoasplit/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CocoaSplit.app'
end
