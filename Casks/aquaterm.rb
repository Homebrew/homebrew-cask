cask 'aquaterm' do
  version '1.1.1'
  sha256 '94b33efea2ec037e6c06beef54b4b3cc48595453c874de863f25c26b3a7ffdb2'

  url "https://downloads.sourceforge.net/aquaterm/AquaTerm/v#{version}/AquaTerm-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/aquaterm/rss?path=/AquaTerm',
          checkpoint: '917b5a97ce56960657fd548cbe7ba124a1a0efec296daca2d998b618884beb79'
  name 'AquaTerm'
  homepage 'http://aquaterm.sourceforge.net/'
  license :bsd

  pkg 'AquaTermInstaller.pkg'

  uninstall pkgutil: 'net.sourceforge.aquaterm.aquaterm.*'
end
