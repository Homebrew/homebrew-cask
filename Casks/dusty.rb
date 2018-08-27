cask 'dusty' do
  version '0.7.3'
  sha256 '6cf61f0dcdc541de123ffd1d8e035eb3fc36e51b626a072355df76c3efd15af9'

  url "https://github.com/gamechanger/dusty/releases/download/#{version}/dusty.tar.gz"
  appcast 'https://github.com/gamechanger/dusty/releases.atom'
  name 'Dusty'
  homepage 'https://github.com/gamechanger/dusty'

  depends_on cask: 'docker-toolbox'
  container type: :tar

  installer script: {
                      executable: 'brew-install.sh',
                      args:       [staged_path],
                      sudo:       true,
                    }
  binary 'dusty'

  uninstall launchctl: 'com.gamechanger.dusty'

  zap trash: '/etc/dusty'
end
