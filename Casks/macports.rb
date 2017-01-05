cask 'macports' do
  version '2.3.5'

  if MacOS.version <= :mountain_lion
    sha256 'e77959840187054d31cbeb64bf33f311cf260973be7daf2a8c41e5753ecd8360'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  elsif MacOS.version <= :mavericks
    sha256 'c0cd44d7f4820742a14dd35b9e5942da438adf0500044ba46c825f5ba44d6a47'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  elsif MacOS.version <= :yosemite
    sha256 '12db5640b550f5c038edc2967d417334cdc0a8d8e619e145e1ed7352d274c07c'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.10-Yosemite.pkg"
    pkg "MacPorts-#{version}-10.10-Yosemite.pkg"
  elsif MacOS.version <= :el_capitan
    sha256 'a465c9364ecc24139c2a15a8613e2dbc8911f9eae96e3b5a7db4a8117f29db88'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.11-ElCapitan.pkg"
    pkg "MacPorts-#{version}-10.11-ElCapitan.pkg"
  else
    sha256 'a465c9364ecc24139c2a15a8613e2dbc8911f9eae96e3b5a7db4a8117f29db88'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.12-Sierra.pkg"
    pkg "MacPorts-#{version}-10.12-Sierra.pkg"
  end

  appcast 'https://github.com/macports/macports-base/releases.atom',
          checkpoint: 'bb4a24db76cee5daec24c402a3c521881f5724b2725e20b6fd5610a53144853e'
  name 'MacPorts'
  homepage 'https://www.macports.org/'
  gpg "#{url}.asc", key_id: '01ff673fb4aae6cd'

  uninstall pkgutil: 'org.macports.MacPorts'

  zap       delete: '~/.macports'
end
