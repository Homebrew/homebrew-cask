cask :v1 => 'hiss' do
  version :latest
  sha256 :no_check

  url 'http://collect3.com.au/hiss/Hiss.zip'
  appcast 'http://collect3.com.au/hiss/appcast.xml'
  homepage 'http://collect3.com.au/hiss/'
  license :unknown

  app 'Hiss.app'
end
