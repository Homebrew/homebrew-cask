cask 'dusty' do
  version '0.7.0'
  sha256 '1212c080c71cd0339362eaf37926bdf66d480960c4e9961ef415d155d2e336e4'

  url "https://github.com/gamechanger/dusty/releases/download/#{version}/dusty.tar.gz"
  appcast 'https://github.com/gamechanger/dusty/releases.atom',
          checkpoint: '36d01568650f63bd3464b72459d7b23bc88853daea7cd6c26a16cfa538e414ed'
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
