cask :v1 => 'bean' do
  version :latest
  sha256 :no_check

  url 'http://www.bean-osx.com/releases/Bean-Install.zip'
  homepage 'http://www.bean-osx.com'
  license :gratis

  app 'Bean-Install/Bean.app'
end
