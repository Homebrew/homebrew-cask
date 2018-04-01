cask 'macports' do
  version '2.4.2'

  if MacOS.version <= :mountain_lion
    sha256 'd88a54392a0238e00987572f7a622ede98a8a95dc388549e658ba548c8d1ff82'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  elsif MacOS.version <= :mavericks
    sha256 '1297ee748ba4748ff626ee5c23b3cc8b759d3fdb652f01f2ade3b1557603639c'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  elsif MacOS.version <= :yosemite
    sha256 '6f15410bcb80b557a8f87ba92790792df76bba22c6937275b41282107ba4b6fd'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.10-Yosemite.pkg"
    pkg "MacPorts-#{version}-10.10-Yosemite.pkg"
  elsif MacOS.version <= :el_capitan
    sha256 '9763a407a9e7d3fcfb85280927d47ae0d3c291fe78a5bc0debf2134ca6ca9953'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.11-ElCapitan.pkg"
    pkg "MacPorts-#{version}-10.11-ElCapitan.pkg"
  elsif MacOS.version <= :sierra
    sha256 '85344a9be97824a6f241ab80e8ff7b9067d39b2bbdac9edc2ea51865ece7f1c7'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.12-Sierra.pkg"
    pkg "MacPorts-#{version}-10.12-Sierra.pkg"
  else
    sha256 '7296251c0388e27307191d23f8a37e1a981de8d9b1c781a677801fcd63e2738e'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.13-HighSierra.pkg"
    pkg "MacPorts-#{version}-10.13-HighSierra.pkg"
  end

  appcast 'https://github.com/macports/macports-base/releases.atom',
          checkpoint: '6ddfb734b6c7633e383f699856b15f72aeadcf36a9c5d24e3d31bbcee13cc6a6'
  name 'MacPorts'
  homepage 'https://www.macports.org/'
  gpg "#{url}.asc", key_id: '01ff673fb4aae6cd'

  uninstall pkgutil: 'org.macports.MacPorts'

  zap trash: '~/.macports'
end
