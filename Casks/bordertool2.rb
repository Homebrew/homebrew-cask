cask 'bordertool2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url 'http://xvi.rpc1.org/BorderTool%202.zip'
  name 'BorderTool 2'
  homepage 'http://xvi.rpc1.org/'
  license :gratis

  app 'BorderTool 2.app'
end
