cask :v1 => 'soqlxplorer' do
  version '2.00'
  sha256 '72c5d9dc582bc30d757c5199cdebdc79ffee479a3435252906554d52b236217d'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          :sha256 => '16b61d4f11f57698ffb54da8f25c1ca443f3f35606e1e794eca4c12ee6ebabae'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'
  license :unknown

  app 'SoqlXplorer.app'
end
