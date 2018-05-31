cask 'macports' do
  version '2.5.0'

  if MacOS.version <= :mountain_lion
    sha256 'ba75e4a1151a5e06b8e271b26296c4418a2285bd27090c83867aeddd3a62c508'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  elsif MacOS.version <= :mavericks
    sha256 '7bb4e9285eee6fc5c75d5f0532e4dc091c9d921a2fba62784e275410bb4b9894'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  elsif MacOS.version <= :yosemite
    sha256 '44871c8d1e6ed05fab15dcb85912c836259c7af13ab9c3729eb4da0476a22ed4'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.10-Yosemite.pkg"
    pkg "MacPorts-#{version}-10.10-Yosemite.pkg"
  elsif MacOS.version <= :el_capitan
    sha256 'dc5b697deb9a17c6d9f2a8e955322665cebdde26bb4f4548ded29bd2f13042a7'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.11-ElCapitan.pkg"
    pkg "MacPorts-#{version}-10.11-ElCapitan.pkg"
  elsif MacOS.version <= :sierra
    sha256 '3a8fee56254c650fbf56c5b131a10e4fc8b86d4e5de4a1b5bb5a5a64d27cf461'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.12-Sierra.pkg"
    pkg "MacPorts-#{version}-10.12-Sierra.pkg"
  else
    sha256 '5024942ebe6dbef01a624b12b9ad25701eaa60e934f59285551c363413f2f7cf'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.13-HighSierra.pkg"
    pkg "MacPorts-#{version}-10.13-HighSierra.pkg"
  end

  appcast 'https://github.com/macports/macports-base/releases.atom',
          checkpoint: 'cf85055221762657350fd4d580efc31d7e1f71e60fa103b5ead055e38e917a37'
  name 'MacPorts'
  homepage 'https://www.macports.org/'
  gpg "#{url}.asc", key_id: '01ff673fb4aae6cd'

  uninstall pkgutil: 'org.macports.MacPorts'

  zap trash: '~/.macports'
end
