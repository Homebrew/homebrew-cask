cask :v1 => 'letterfix' do
  version '2.3.1'
  sha256 'c8edc894938dbfe1d55c628b040bcce0a739b55b339d7e8557f8c324ae8d4a95'

  url "http://dl.sourceforge.jp/letter-fix/62248/LetterFix-#{version}.dmg"
  homepage 'http://sourceforge.jp/projects/letter-fix/'
  license :oss

  pkg "LetterFix-#{version}.pkg"

  uninstall :pkgutil => 'org.kuri.letterfix.LetterFix.pkg'
end
