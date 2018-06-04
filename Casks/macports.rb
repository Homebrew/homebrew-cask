cask 'macports' do
  version '2.5.0'

  if MacOS.version <= :mountain_lion
    sha256 '9212c3803e2d53a765e31fcd231d43a7bc7191f824c00a195f5e9be213449cae'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  elsif MacOS.version <= :mavericks
    sha256 'c3fb4a53d38ff6bcb03b84cb979d80a21a84092fa969bee473866e3e42d88b76'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  elsif MacOS.version <= :yosemite
    sha256 '763b14cd5c7a3daa743739d874df1258dc580ee7f2c34fed4c3c46ee25a28244'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.10-Yosemite.pkg"
    pkg "MacPorts-#{version}-10.10-Yosemite.pkg"
  elsif MacOS.version <= :el_capitan
    sha256 'b51bd1984641b43ec3b44c8236a7e2b84ab562e5a167417aab541060b6f4bc54'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.11-ElCapitan.pkg"
    pkg "MacPorts-#{version}-10.11-ElCapitan.pkg"
  elsif MacOS.version <= :sierra
    sha256 'c66ae68ebd3a37e4a1055a7e90332777a72b28c24bc5d3d0524b088a467393d6'
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
