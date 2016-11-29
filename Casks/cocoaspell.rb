cask 'cocoaspell' do
  version '2.5'
  sha256 'd8dd01e6471df86f55d5f272a33fdb421f49a2fb923a9858a8772ec4367d333c'

  url "http://people.ict.usc.edu/~leuski/cocoaspell/cocoAspell.#{version}.dmg",
      user_agent: :fake
  name 'cocoAspell'
  homepage 'http://people.ict.usc.edu/~leuski/cocoaspell/'

  depends_on macos: '>= :el_capitan'

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
