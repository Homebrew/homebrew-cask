cask :v1 => 'sigil' do
  version '0.8.6'
  sha256 'b69d642d7f1126b7f7d1c542773267c1dbaa764e2ec473258ff93d3a8f385c71'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/user-none/Sigil/releases.atom'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
