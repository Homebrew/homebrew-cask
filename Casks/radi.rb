cask :v1 => 'radi' do
  version :latest
  sha256 :no_check

  url 'http://radiapp.com/Radi.zip'
  homepage 'http://radiapp.com/'
  license :closed

  app 'Radi.app'
end
