cask 'sqlectron' do
  version '1.21.0'
  sha256 'e8e7f7c9e3dd75c55ace6326dbab9e9c885394bccffd4252ac621d74fc1ba9e2'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'b84e0ceb5f55bd4548f039e9af3fbdb4458b1e94597b718ab1bb8d7a68fe6a2d'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  zap delete: [
                '~/.sqlectron.json',
                '~/Library/Application Support/Sqlectron',
              ]
end
