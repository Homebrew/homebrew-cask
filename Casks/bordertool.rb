cask :v1 => 'bordertool' do
  version :latest
  sha256 :no_check

  url 'http://xvi.rpc1.org/BorderTool.zip'
  name 'BorderTool'
  homepage 'http://xvi.rpc1.org/'
  license :gratis

  app 'BorderTool.app'
end
