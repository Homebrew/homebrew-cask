cask 'ricochet' do
  version '1.1.4.1'
  sha256 'e5fbcbebe51fa52d9443fd2a07714d0e6e087c314a9c3eecf73ed4da8ca9e8aa'

  url "https://ricochet.im/releases/#{version.major_minor_patch}/ricochet-#{version}-macos.dmg"
  appcast 'https://github.com/ricochet-im/ricochet/releases.atom'
  name 'Ricochet'
  homepage 'https://ricochet.im/'

  app 'Ricochet.app'
end
