cask 'dusty' do
  version '0.7.0'
  sha256 '1212c080c71cd0339362eaf37926bdf66d480960c4e9961ef415d155d2e336e4'

  url "https://github.com/gamechanger/dusty/releases/download/#{version}/dusty.tar.gz"
  appcast 'https://github.com/gamechanger/dusty/releases.atom',
          checkpoint: 'f7aaaf6b9c8543438143ec998bf516166081c0cfb1c0e096b2d6804b8b32d2e9'
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
