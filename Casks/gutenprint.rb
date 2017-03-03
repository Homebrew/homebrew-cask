cask 'gutenprint' do
  version '5.2.12'
  sha256 'b598a659cd6e2b24c22fbc24a60e5111a18d961150493ccd310edbea9fc03a0e'

  url "https://downloads.sourceforge.net/gimp-print/gutenprint-#{version.major_minor}/#{version}/gutenprint-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gimp-print/rss',
          checkpoint: '11d0d980f531826dd2197be15ece5e8f6664118dc7fb9082255bcaa4d908e109'
  name 'Gutenprint'
  homepage 'http://gimp-print.sourceforge.net/'

  pkg "gutenprint-#{version}.pkg"

  uninstall pkgutil: 'org.gutenprint.printer-driver'
end
