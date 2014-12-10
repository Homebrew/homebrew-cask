cask :v1 => 'crushftp' do
  version :latest
  sha256 :no_check

  url 'https://www.crushftp.com/early7/CrushFTP7_OSX.zip'
  homepage 'https://www.crushftp.com'
  license :unknown    # todo: improve this machine-generated value

  app 'CrushFTP6_OSX/CrushFTP7.app'
end
