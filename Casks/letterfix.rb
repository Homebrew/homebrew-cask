cask :v1 => 'Letterfix' do
  version '2.3.1'
  sha256 'c8edc894938dbfe1d55c628b040bcce0a739b55b339d7e8557f8c324ae8d4a95'

  url 'http://sourceforge.jp/frs/redir.php?m=iij&f=%2Fletter-fix%2F62248%2FLetterFix-2.3.1.dmg'
  homepage 'http://sourceforge.jp/projects/letter-fix/'
  license :oss

  pkg 'LetterFix-2.3.1.pkg'
  uninstall :pkgutil => 'org.kuri.letterfix.LetterFix.pkg'
end
