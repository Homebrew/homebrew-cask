cask 'cocoasplit' do
  version '2.0.13'
  sha256 '8e13a37b6e983453e955e5baa31992ae0c7160076660a9eb7bb40dd949381e00'

  url "https://www.cocoasplit.com/releases/#{version.major_minor}/CocoaSplit_#{version}.zip"
  name 'CocoaSplit'
  homepage 'https://www.cocoasplit.com/'

  app 'CocoaSplit.app'
end
