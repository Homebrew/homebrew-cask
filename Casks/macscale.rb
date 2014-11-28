cask :v1 => 'macscale' do
  version :latest
  sha256 :no_check

  url 'http://www.brinscall.com/MacScale.zip'
  homepage 'http://www.macscale.com'
  license :closed

  app 'MacScale.app'
end
