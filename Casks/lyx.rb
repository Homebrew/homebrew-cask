cask 'lyx' do
  version '2.2.1'
  sha256 'a4049525dda1b06035c12d575d512920b230393032658f8085710a926d1f3a36'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt5-x86_64-cocoa.dmg"
  name 'LyX'
  homepage 'https://www.lyx.org'
  license :gpl
  gpg "#{url}.sig",
      key_id: 'de7a44fac7fb382d'

  app 'LyX.app'
end
