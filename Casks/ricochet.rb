cask 'ricochet' do
  version '1.1.4.1'
  sha256 'e5fbcbebe51fa52d9443fd2a07714d0e6e087c314a9c3eecf73ed4da8ca9e8aa'

  url "https://ricochet.im/releases/#{version.major_minor_patch}/ricochet-#{version}-macos.dmg"
  appcast 'https://github.com/ricochet-im/ricochet/releases.atom',
          checkpoint: 'fc41c126784651701522d0621c28b0c6b2a2f22e3f213511bffe5cbd9f67e172'
  name 'Ricochet'
  homepage 'https://ricochet.im/'
  gpg "#{url}.asc", key_id: '9032cae4cbfa933a5a2145d5ff97c53f183c045d'

  app 'Ricochet.app'
end
