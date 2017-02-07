cask 'sqlectron' do
  version '1.20.1'
  sha256 '770f585ceb858abd0db7e06665343ed64934712c55e634b18c6c1d389074e469'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'c1e85a44b74c1ffc437bda372b51f01180d4196da3f7a76942893c36da787f2f'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/.sqlectron.json',
                '~/Library/Application Support/Sqlectron',
              ]
end
