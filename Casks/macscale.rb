cask :v1 => 'macscale' do
  version :latest
  sha256 :no_check

  # brinscall.com is the official download host per the vendor homepage
  url 'http://www.brinscall.com/MacScale.zip'
  homepage 'http://www.macscale.com'
  license :closed

  app 'MacScale.app'
end
