cask 'lyx' do
  version '2.2.2'
  sha256 'b6cf43227bfa8c1fb6879bacf04b818d78b6368c7318b0391f2bdfab70858d69'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt5-x86_64-cocoa.dmg"
  name 'LyX'
  homepage 'https://www.lyx.org'
  gpg "#{url}.sig",
      key_id: 'de7a44fac7fb382d'

  app 'LyX.app'
end
