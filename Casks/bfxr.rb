cask :v1 => 'bfxr' do
  version :latest
  sha256 :no_check

  url "http://ded.bfxr.net/~locus/bfxr_update/Bfxr_MAC.zip"
  homepage 'http://www.bfxr.net/'
  license :apache

  app 'Bfxr.app'
end
