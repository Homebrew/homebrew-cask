class AquaTerm < Cask
  url 'http://downloads.sourceforge.net/project/aquaterm/AquaTerm/AquaTerm1.1.0.dmg'
  homepage 'http://aquaterm.sourceforge.net/'
  version '1.1.0'
  sha1 'a1a6d958f0eb6c9b496496bae81d6dcd9781a5bc'
  link :app, :none
  install 'AquaTermInstaller.pkg'
end
