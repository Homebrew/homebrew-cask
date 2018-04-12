cask 'macports' do
  version '2.4.3'

  if MacOS.version <= :mountain_lion
    sha256 '5e54d6835aae311098dd74a5930adec520d0d40482a63167044d67af9627cc5d'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  elsif MacOS.version <= :mavericks
    sha256 'e3617e380a8f74d529186d78fa0901050242aefb70a4e24cb3d32f353c58a60b'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  elsif MacOS.version <= :yosemite
    sha256 '3d79f2c84c6a512b940114f65da4278d23b25e725d9db518b6fbfeeaad3f12ef'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.10-Yosemite.pkg"
    pkg "MacPorts-#{version}-10.10-Yosemite.pkg"
  elsif MacOS.version <= :el_capitan
    sha256 '383ad33634117f2b5b4780615b2742906ab73ce1ef3cfa92fb9689f2c62521a6'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.11-ElCapitan.pkg"
    pkg "MacPorts-#{version}-10.11-ElCapitan.pkg"
  elsif MacOS.version <= :sierra
    sha256 '60a70d695c2352e89980ab62f3088b6ede13bf7b57083b5122ddc34275451b31'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.12-Sierra.pkg"
    pkg "MacPorts-#{version}-10.12-Sierra.pkg"
  else
    sha256 'aaa061db19b6b0dcfd766eb59db08c3d6d10edb89ecf3fa983360f0108634511'
    # github.com/macports/macports-base was verified as official when first introduced to the cask
    url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-10.13-HighSierra.pkg"
    pkg "MacPorts-#{version}-10.13-HighSierra.pkg"
  end

  appcast 'https://github.com/macports/macports-base/releases.atom',
          checkpoint: '324f225cf4df690c852c69a8e746b3fb640ef55ffe0f9c4932e09c41fcd27d14'
  name 'MacPorts'
  homepage 'https://www.macports.org/'
  gpg "#{url}.asc", key_id: '01ff673fb4aae6cd'

  uninstall pkgutil: 'org.macports.MacPorts'

  zap trash: '~/.macports'
end
