cask :v1 => 'cookie' do
  version :latest
  sha256 :no_check

  url 'http://sweetpproductions.com/products/cookie/Cookie.dmg'
  homepage 'http://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
