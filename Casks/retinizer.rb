cask :v1 => 'retinizer' do
  version '0.5.0'
  sha256 '34d82f6beeb934ebd73ac231c364298456374d8e52f5e3826077999507832922'

  url "https://sites.google.com/a/mikelpr.com/files/home/Retinizer#{version.gsub('.','')}.zip"
  homepage 'http://retinizer.mikelpr.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Retinizer.app'
end
