cask 'lyx' do
  version '2.2.0'
  sha256 '3fdeb815c4fc0b9a46d3f02201710eaeaf94b8f2c9c6bc30253dbeca2b71439f'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt5-x86_64-cocoa.dmg"
  name 'LyX'
  homepage 'https://www.lyx.org'
  license :gpl
  gpg "#{url}.sig",
      key_id: 'de7a44fac7fb382d'

  app 'LyX.app'
end
