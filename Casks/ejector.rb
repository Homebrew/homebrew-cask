cask 'ejector' do
  version '0.8.1'
  sha256 :no_check

  url "http://www.jeb.com.fr/soft/Ejector-v#{version}.dmg"
  name 'Ejector'
  homepage 'http://www.jeb.com.fr/en/ejector.shtml'
  license :gratis

  app 'Ejector.app'
end
