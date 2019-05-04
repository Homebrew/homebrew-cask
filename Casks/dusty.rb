cask 'dusty' do
  version '0.7.4'
  sha256 '3b4a5dd21e154244e0023b7692e45798fad4a3387a766a08e95286af448288fb'

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
