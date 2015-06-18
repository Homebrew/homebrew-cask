cask :v1 => 'animated-gif-quicklook' do
  version :latest
  sha256 :no_check

  url 'http://downloads.sourceforge.net/sourceforge/animgifqlgen/Animated%20GIF%20Quicklook%20Plugin%20Installer.pkg'
  name 'Animated GIF Quicklook Plugin'
  homepage 'http://animgifqlgen.sourceforge.net/'
  license :bsd

  pkg 'Animated GIF Quicklook Plugin Installer.pkg'

  uninstall :pkgutil => [
                         'com.dford.animatedGifQuicklookPlugin.animatedgifql.pkg',
                         'com.dford.animatedGifQuicklookPlugin.animatedgifqlreadme.pkg'
                        ]
end
