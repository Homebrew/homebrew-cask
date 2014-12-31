cask :v1 => 'locko' do
  version :latest
  sha256 :no_check

  url 'http://download.binarynights.com/Locko.zip'
  homepage 'http://www.binarynights.com/'
  license :commercial

  app 'Locko.app'
end
