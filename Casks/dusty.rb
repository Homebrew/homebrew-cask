cask 'dusty' do
  version '0.6.5'
  sha256 '6e88894c7062f24bb8b4b7b2faa149b6b638c7d3fa2be86a56266e2d1789ea60'

  url "https://github.com/gamechanger/dusty/releases/download/#{version}/dusty.tar.gz"
  appcast 'https://github.com/gamechanger/dusty/releases.atom',
          checkpoint: '14dd655e5ed3a55495436c0fc9fb426bedb461a600083d10f72f330c66181d7a'
  name 'Dusty'
  homepage 'https://github.com/gamechanger/dusty'
  license :mit

  depends_on cask: 'dockertoolbox'
  container type: :tar

  installer script:       'brew-install.sh',
            args:         %W[#{staged_path}],
            must_succeed: true,
            sudo:         true
  binary 'dusty'

  uninstall launchctl: 'com.gamechanger.dusty'

  zap delete: '/etc/dusty'
end
