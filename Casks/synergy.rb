cask :v1 => 'synergy' do
  version '1.6.2-master-ebba77f'

  os_version_pkg = {
    yosemite: {
      sha256: '259dd8367e0d9b6152e93d50854687d54714f649b6b018949621ba2194b3f987',
      url: "http://synergy-project.org/files/packages/synergy-#{version}-MacOSX1010-x86_64.dmg",
    },
    mavericks: {
      sha256: 'fcbde02016c2bfa1f76fe96e09f55c8c6ae77c87dffa0c928f3ca25beaa17b39',
      url: "http://synergy-project.org/files/packages/synergy-#{version}-MacOSX109-x86_64.dmg",
    },
    mountain_lion: {
      sha256: '4122e8a1eec37ee734f7fce68028610d569901b841bb20b89360242d1c1ff78d',
      url: "http://synergy-project.org/files/packages/synergy-#{version}-MacOSX108-x86_64.dmg",
    },
    lion: {
      sha256: 'dbbc7e6bf1afacbe3913fb3d8790251539e5d8485428a36ec7ca74088ac6a5ec',
      url: "http://synergy-project.org/files/packages/synergy-#{version}-MacOSX107-x86_64.dmg",
    },
    snow_leopard: {
      sha256: 'f60afb93b8270619d802c567e655baa3f0176710ed6a656bcdf1a7a54dc59f8f',
      url: "http://synergy-project.org/files/packages/synergy-#{version}-MacOSX106-i386.dmg",
    },
    leopard: {
      sha256: '8d74f836c4207c20c4b5e607a61af1b915111d4877c886ab51f8ab81e98e1a81',
      url: "http://synergy-project.org/files/packages/synergy-#{version}-MacOSX105-i386.dmg",
    },
  }.fetch(MacOS.version.to_sym)

  url os_version_pkg[:url]
  sha256 os_version_pkg[:sha256]

  homepage 'http://synergy-project.org'
  license :oss

  app 'Synergy.app'

  depends_on :macos => [
                        :yosemite,
                        :mavericks,
                        :mountain_lion,
                        :lion,
                        :snow_leopard,
                        :leopard,
                       ]
end
