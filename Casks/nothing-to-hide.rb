cask 'nothing-to-hide' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://nothingtohide.s3.amazonaws.com/pc/Nothing_To_Hide_MAC.zip'
  name 'Nothing To Hide'
  homepage 'http://back.nothingtohide.cc/'
  license :cc

  app 'Nothing To Hide.app'
end
