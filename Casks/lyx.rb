cask :v1 => 'lyx' do
  version '2.1.3'
  sha256 'dd17537095d66c2af24918ebcc0670b5b0a761e23157a73f6c9c144d450fc70e'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt4-x86_64-cocoa.dmg"
  gpg "#{url}.sig",
      :key_id => 'de7a44fac7fb382d'
  name 'LyX'
  homepage 'http://www.lyx.org'
  license :gpl

  app 'LyX.app'
end
