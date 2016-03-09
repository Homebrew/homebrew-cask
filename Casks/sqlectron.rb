cask 'sqlectron' do
  version '1.5.0'
  sha256 'f5c2960cdbec32c8c8d4803b1d09e01be9e75ac1169030c3eac99b7d25e02fec'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-darwin-x64.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'a81a8512c35464dc1c1167fd27a15fa561251c88f7a991ef097f2d150f821eec'
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
