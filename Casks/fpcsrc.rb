cask 'fpcsrc' do
  version '3.0.4,20171204'
  sha256 'f52c5da5da38e56336f7671d068d5fc5e838af4283bdaf885475867e6dc17215'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/fpc-src-#{version.before_comma}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss'
  name 'Free Pascal Compiler Source'
  homepage 'https://www.freepascal.org/'

  pkg "fpcsrc-#{version.before_comma}-#{version.after_comma}.pkg"

  uninstall pkgutil: 'org.freepascal.fpc.source'
end
