cask 'bordertool' do
  version :latest
  sha256 :no_check

  url 'http://xvi.rpc1.free.fr/BorderTool.zip'
  name 'BorderTool'
  homepage 'http://xvi.rpc1.free.fr/'

  auto_updates true

  app 'BorderTool.app'
end
