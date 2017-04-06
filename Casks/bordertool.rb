cask 'bordertool' do
  version :latest
  sha256 :no_check

  # xvi.rpc1.free.fr was verified as official when first introduced to the cask
  url 'http://xvi.rpc1.free.fr/BorderTool.zip'
  name 'BorderTool'
  homepage 'http://xvi.rpc1.org/'

  auto_updates true

  app 'BorderTool.app'
end
