cask 'letterfix' do
  version '2.3.2'
  sha256 '0830e868adc90e71ddfb42ce3f4a2cd5592b0bb5e9df0caf3d45213e083cc9c0'

  url "http://dl.sourceforge.jp/letter-fix/62451/LetterFix-#{version}a.dmg"
  name 'LetterFix'
  homepage 'https://sourceforge.jp/projects/letter-fix/'
  license :mit

  pkg "LetterFix-#{version}.pkg"

  uninstall pkgutil: 'org.kuri.letterfix.LetterFix.pkg'
end
