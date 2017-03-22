cask 'macports' do
  version '2.4.1'

  if MacOS.version <= :mountain_lion
    sha256 '4f7989fa6f289df52c540b698eddb581a76d7f5c084bfa4831269f29e24605d4'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  elsif MacOS.version <= :mavericks
    sha256 'ce5b0bd75df423f759886b1ab8fc09c1e456eb8e63c3dff6b28884344c587136'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  elsif MacOS.version <= :yosemite
    sha256 '3698ccfcc6b38fba9f4b1db6518f069794c9e086b8cc70926931b11c4413f62a'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.10-Yosemite.pkg"
    pkg "MacPorts-#{version}-10.10-Yosemite.pkg"
  elsif MacOS.version <= :el_capitan
    sha256 '113b64df06a8f4c2d91d5fa280a09ddff2a1b403d1cc7a572948d423bb2df1d3'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.11-ElCapitan.pkg"
    pkg "MacPorts-#{version}-10.11-ElCapitan.pkg"
  else
    sha256 'fc6c718dd7659d48d3d0764e9ded90b54439b0ed322804d7e58fec8914242479'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.12-Sierra.pkg"
    pkg "MacPorts-#{version}-10.12-Sierra.pkg"
  end

  appcast 'https://github.com/macports/macports-base/releases.atom',
          checkpoint: '43a4906fd5edaea9d93d04b65774cfaf70063830ce3ff9de78fce26023cf98ac'
  name 'MacPorts'
  homepage 'https://www.macports.org/'
  gpg "#{url}.asc", key_id: '01ff673fb4aae6cd'

  uninstall pkgutil: 'org.macports.MacPorts'

  zap       delete: '~/.macports'
end
