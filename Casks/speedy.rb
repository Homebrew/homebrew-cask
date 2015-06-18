cask :v1 => 'speedy' do
  version :latest
  sha256 :no_check

  url 'http://www.apimac.com/download/Speedy.zip'
  name 'Speedy'
  homepage 'http://www.apimac.com/mac/speedy/'
  license :commercial

  app 'Speedy.app'
end
