cask 'sqlectron' do
  version '1.3.0'
  sha256 '547426384db31510d196bdecc5ee626cbc305192dc70cc69bc6977716fba45d2'

  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-darwin-x64.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'a0b672eb1bf02b941658b5b56199fc8d98f2c703d430430076f86646be2b41f7'
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
