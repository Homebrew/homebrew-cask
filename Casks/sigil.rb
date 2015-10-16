cask :v1 => 'sigil' do
  version '0.8.7'
  sha256 'a34ad28a758c64202cb380dcb3831d8f3a6afc100926be7be93d12f39f9493d7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/user-none/Sigil/releases.atom'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
