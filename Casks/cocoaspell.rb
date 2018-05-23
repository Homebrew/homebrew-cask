cask 'cocoaspell' do
  version '2.5'
  sha256 'd8dd01e6471df86f55d5f272a33fdb421f49a2fb923a9858a8772ec4367d333c'

  url "http://people.ict.usc.edu/~leuski/cocoaspell/cocoAspell.#{version}.dmg",
      user_agent: :fake
  appcast 'http://people.ict.usc.edu/~leuski/cocoaspell/',
          checkpoint: 'e22a03f5b7404c2bb2c9a09c2ead537eff504a8158fe99c523c4ef369e097ea9'
  name 'cocoAspell'
  homepage 'http://people.ict.usc.edu/~leuski/cocoaspell/'

  depends_on macos: '>= :el_capitan'

  pkg 'cocoAspell.pkg'

  uninstall pkgutil: 'net.leuski.cocoaspell.*',
            delete:  [
                       '/Application Support/cocoAspell/aspell6-en-6.0-0',
                       '/Library/Application Support/cocoAspell',
                       '/Library/PreferencePanes/Spelling.prefPane',
                     ]

  zap trash: [
               '~/.aspell.conf',
               '~/.aspell.en.prepl',
               '~/.aspell.en.pws',
               '~/Library/Preferences/cocoAspell',
             ]

  caveats <<~EOS
    Non-English dictionaries must be installed separately. For more information, see

      http://people.ict.usc.edu/~leuski/cocoaspell/install_dict.php
  EOS
end
