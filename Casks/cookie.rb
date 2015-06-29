cask :v1 => 'cookie' do
  version :latest
  sha256 :no_check

  url 'https://sweetpproductions.com/products/cookie/Cookie.dmg'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
