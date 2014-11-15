cask :v1 => 'gimp' do
  version '2.8.14'
  sha256 'a90fe7001ee4f64d5108cd7b6aad843772aab7f1a7e67018564c620a4374460a'

  url "http://download.gimp.org/pub/gimp/v2.8/osx/gimp-#{version}.dmg"
  homepage 'http://www.gimp.org'
  license :unknown

  app 'GIMP.app'
end
