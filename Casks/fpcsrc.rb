cask 'fpcsrc' do
  version '3.0.4,20171204'
  sha256 'f52c5da5da38e56336f7671d068d5fc5e838af4283bdaf885475867e6dc17215'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/fpc-src-#{version.before_comma}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: 'd911d118f867bdcc4e710d24da8515eea62f76328ef65238e1db3df77897268f'
  name 'Free Pascal Compiler Source'
  homepage 'https://www.freepascal.org/'

  pkg "fpcsrc-#{version.before_comma}-#{version.after_comma}.pkg"

  uninstall pkgutil: 'org.freepascal.fpc.source'
end
