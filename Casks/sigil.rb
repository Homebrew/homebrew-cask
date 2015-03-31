cask :v1 => 'sigil' do
  version '0.8.5'
  sha256 'bcbef987a9ec6dab443f50f41b2f9e1f756391f92a0babfee9c8ad63a075752f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/user-none/Sigil/releases.atom'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
