cask :v1 => 'bordertool2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  b5e3f2d645dd53961684a7f90828f842a30a0451
  version :latest
  sha256 :no_check

  url 'http://xvi.rpc1.org/BorderTool%202.zip'
  name 'BorderTool 2'
  homepage 'http://xvi.rpc1.org/'
  license :gratis

  app 'BorderTool 2.app'
end
