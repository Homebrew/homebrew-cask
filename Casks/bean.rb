cask 'bean' do
  version :latest
  sha256 :no_check

  url 'http://www.bean-osx.com/releases/Bean-Install.zip'
  name 'Bean'
  homepage 'http://www.bean-osx.com'
  license :gratis

  app 'Bean-Install/Bean.app'
end
