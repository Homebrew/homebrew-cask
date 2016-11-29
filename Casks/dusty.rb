cask 'dusty' do
  version '0.7.1'
  sha256 '210489ae281460ab4c90e1c66998bbee8887020c73da699e356df6f26a482cb6'

  url "https://github.com/gamechanger/dusty/releases/download/#{version}/dusty.tar.gz"
  appcast 'https://github.com/gamechanger/dusty/releases.atom',
          checkpoint: 'f91aefdc855b9b5f5534fb9c411311bad195cecb0df2796a43c79c66a6453abc'
  name 'Dusty'
  homepage 'https://github.com/gamechanger/dusty'

  depends_on cask: 'docker-toolbox'
  container type: :tar

  installer script:       'brew-install.sh',
            args:         %W[#{staged_path}],
            must_succeed: true,
            sudo:         true
  binary 'dusty'

  uninstall launchctl: 'com.gamechanger.dusty'

  zap delete: '/etc/dusty'
end
