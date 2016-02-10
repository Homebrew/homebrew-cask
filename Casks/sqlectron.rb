cask 'sqlectron' do
  version '1.4.0'
  sha256 '36c4a65b7692a72bb173e4d3bad6ec1a01a975e7a6208a398f40d14e94376e6c'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-darwin-x64.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: '8ea6aab4c949435627b0b44813069b26ae13377373ec57efca9fe7bfe24ec79b'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'
  license :mit

  depends_on macos: '>= :mountain_lion'
  container nested: 'Sqlectron.dmg'

  app 'Sqlectron.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/.sqlectron.json',
                '~/Library/Application Support/Sqlectron',
              ]
end
