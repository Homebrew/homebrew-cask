cask 'icab' do
  version '5.6.2'
  sha256 'b764f8cd53f8f6807a40e2fa959129d96b84f44055783b0db551221996ef11ba'

  # clauss-net.de is the official download host per the vendor homepage
  url "http://icab.clauss-net.de/icab/iCab_#{version}_Intel.zip"
  name 'iCab'
  homepage 'http://www.icab.de/'
  license :commercial

  app "iCab #{version} (64+32 Bit Intel Version for MacOSX 10.7-10.11)/iCab.app"
end
