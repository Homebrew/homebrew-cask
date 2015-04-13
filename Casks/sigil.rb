cask :v1 => 'sigil' do
  version '0.8.6'
  sha256 '5d33736d527a7c519c00562880584c22392bcaa5d8883ab76d2d346de2f342ab'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/user-none/Sigil/releases.atom'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
