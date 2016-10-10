cask 'animated-gif-quicklook' do
  version '1'
  sha256 'c8304e8966ad83e0412685d4ba94fd968f1baa6ce590f468001efda3aa261eb6'

  url 'https://downloads.sourceforge.net/animgifqlgen/Animated%20GIF%20Quicklook%20Plugin%20Installer.pkg'
  appcast 'https://sourceforge.net/projects/animgifqlgen/rss?path=/files',
          checkpoint: 'f7a28b9b96ad478f9165f77a78f14abb2c12a8787d69e3d77c788d1380471720'
  name 'Animated GIF Quicklook Plugin'
  homepage 'http://animgifqlgen.sourceforge.net/'

  pkg 'Animated GIF Quicklook Plugin Installer.pkg'

  uninstall pkgutil: [
                       'com.dford.animatedGifQuicklookPlugin.animatedgifql.pkg',
                       'com.dford.animatedGifQuicklookPlugin.animatedgifqlreadme.pkg',
                     ]

  caveats do
    discontinued
  end
end
