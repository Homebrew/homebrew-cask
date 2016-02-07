cask 'animated-gif-quicklook' do
  version '1'
  sha256 'c8304e8966ad83e0412685d4ba94fd968f1baa6ce590f468001efda3aa261eb6'

  url 'http://downloads.sourceforge.net/sourceforge/animgifqlgen/Animated%20GIF%20Quicklook%20Plugin%20Installer.pkg'
  appcast 'http://sourceforge.net/projects/animgifqlgen/rss?path=/',
          checkpoint: '05962ec8d0572bdf8b2d109849fdd00749723458c48cc901767b38c235c55137'
  name 'Animated GIF Quicklook Plugin'
  homepage 'http://animgifqlgen.sourceforge.net/'
  license :bsd

  pkg 'Animated GIF Quicklook Plugin Installer.pkg'

  uninstall pkgutil: [
                       'com.dford.animatedGifQuicklookPlugin.animatedgifql.pkg',
                       'com.dford.animatedGifQuicklookPlugin.animatedgifqlreadme.pkg',
                     ]

  caveats do
    discontinued
  end
end
