cask 'crushftp' do
  version :latest
  sha256 :no_check

  url 'https://www.crushftp.com/CrushFTP7_OSX.zip'
  name 'CrushFTP7'
  homepage 'https://www.crushftp.com/'

  app 'CrushFTP7_OSX/CrushFTP7.app'

  caveats do
    depends_on_java
  end
end
