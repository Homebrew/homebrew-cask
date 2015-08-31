cask :v1 => 'front' do
  version :latest
  sha256 :no_check

  url 'http://dl.frontapp.com/front-latest.zip'
  name 'Front'
  homepage 'https://frontapp.com/'
  license :gratis

  app 'Front.app'
end
