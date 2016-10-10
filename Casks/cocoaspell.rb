cask 'cocoaspell' do
  version '2.1'
  sha256 '06d6cd7f2b04c47f553c5a3a33ebe6bc5651457521cbe7e3ead84a6cb218053c'

  # people.ict.usc.edu/~leuski/cocoaspell was verified as official when first introduced to the cask
  url "http://people.ict.usc.edu/~leuski/cocoaspell/cocoAspell.#{version}.dmg"
  name 'cocoAspell'
  homepage 'http://cocoaspell.leuski.net/'

  pkg 'cocoAspell.pkg'

  uninstall pkgutil: 'net.leuski.cocoaspell.*',
            delete:  [
                       '/Application Support/cocoAspell/aspell6-en-6.0-0',
                       '/Library/PreferencePanes/Spelling.prefPane',
                     ]

  zap delete: [
                '~/.aspell.conf',
                '~/.aspell.en.prepl',
                '~/.aspell.en.pws',
              ]

  caveats <<-EOS.undent
    Non-English dictionaries must be installed separately.  For more information, see

      http://people.ict.usc.edu/~leuski/cocoaspell/install_dict.php
  EOS
end
