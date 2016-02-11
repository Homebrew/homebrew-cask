cask 'atom' do
  version '1.5.1'
  sha256 'd84a82bdef492c3c2b03a8a24d503aa9f9f064162b4717ecfbd33d007a61b1ed'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '7c6bb3198412ffbfd27f602a87595297f4a4422bf7d056c4a9abf0c91dfaa5f2'
  name 'Github Atom'
  homepage 'https://atom.io/'
  license :mit

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Atom.app'
  binary 'Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm', target: 'apm'
  binary 'Atom.app/Contents/Resources/app/atom.sh', target: 'atom'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/.atom',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/Atom',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.github.atom.ShipIt',
                '~/Library/Caches/com.github.atom',
                '~/Library/Preferences/com.github.atom.plist',
              ]
end
