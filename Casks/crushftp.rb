cask 'crushftp' do
  version :latest
  sha256 :no_check

  url 'https://www.crushftp.com/CrushFTP9_OSX.zip'
  name 'CrushFTP9'
  homepage 'https://www.crushftp.com/'

  app 'CrushFTP9_OSX/CrushFTP9.app'

  caveats do
    depends_on_java
  end
end
