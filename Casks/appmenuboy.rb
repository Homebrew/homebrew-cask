cask :v1 => 'appmenuboy' do
  version :latest
  sha256 :no_check

  url 'https://appmenuboy.googlecode.com/svn/html/AppMenuBoy.zip'
  name 'AppMenuBoy'
  homepage 'https://code.google.com/p/appmenuboy/'
  license :oss

  app 'AppMenuBoy.app'
end
