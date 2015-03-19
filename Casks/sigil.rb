cask :v1 => 'sigil' do
  version '0.8.4'
  sha256 '755dc457cd37bd08cf5eac68fdc93831c03eb4f16cabc710469f361aab45332d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/user-none/Sigil/releases.atom'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
