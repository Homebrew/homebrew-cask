cask :v1 => 'sigil' do
  version '0.9.1'
  sha256 '9bdcdce5dcf9164c75cb78196e673f47592b29b0f6beb555ca6a87e24b016ee8'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/user-none/Sigil/releases.atom'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
