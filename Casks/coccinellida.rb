cask :v1 => 'coccinellida' do
  version '0.6.1'
  sha256 'bd590bf54667b85b4c14dae95d727bfa44cc893a75f231490b48a4a65049d8df'

  url "https://downloads.sourceforge.net/project/coccinellida/Coccinellida-#{version}.zip"
  appcast 'http://coccinellida.sourceforge.net/sparkle.xml',
          :sha256 => '8d868a49b014c2ccee0289d54a0a22883c6eadc20e2246f58c49939ad00b55a1'
  homepage 'http://coccinellida.sourceforge.net/'
  license :oss

  app 'Coccinellida.app'
end
