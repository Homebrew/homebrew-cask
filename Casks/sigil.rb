cask :v1 => 'sigil' do
  version '0.8.2'
  sha256 '2c8dd9f573c4549adde0778cbcc1c5535fdc68a705fd3aa470700dea678117cd'

  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  homepage 'http://code.google.com/p/sigil/'
  license :oss

  app 'Sigil.app'
end
