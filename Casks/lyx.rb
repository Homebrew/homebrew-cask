cask :v1 => 'lyx' do
  version '2.1.4'
  sha256 'a89e0c90cf0fe5e974ec3eaa241403b1074878430f2f81552e62fb8f3b157597'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt4-cocoa.dmg"
  gpg "#{url}.sig",
      :key_id => 'de7a44fac7fb382d'
  name 'LyX'
  homepage 'http://www.lyx.org'
  license :gpl

  app 'LyX.app'
end
