cask 'bordertool2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url 'http://xvi.rpc1.free.fr/BorderTool%202.zip'
  name 'BorderTool 2'
  homepage 'http://xvi.rpc1.free.fr/'

  auto_updates true

  app 'BorderTool 2.app'
end
