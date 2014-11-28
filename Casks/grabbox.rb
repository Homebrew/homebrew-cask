cask :v1 => 'grabbox' do
  version '0.4.2'
  sha256 'e6f92efce8585b58d1b5d9afc4a2187e07bf76c14961aff1b83a8422fb342f2f'

  url "http://grabbox.devsoft.no/updates/GrabBox%20Beta%20v#{version}.zip"
  appcast 'http://grabbox.devsoft.no/appcastBeta.xml',
          :sha256 => '8333d48af84e69f3885f7de4cd553c46a6feceadb1e354bf19a9170c277fabfe'
  homepage 'http://grabbox.devsoft.no/'
  license :unknown

  app 'GrabBox.app'
end
