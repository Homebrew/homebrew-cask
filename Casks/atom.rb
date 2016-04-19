cask 'atom' do
  version '1.7.2'
  sha256 '71060672ee4da5f5a953e92fb7499f13b54913b863db32ec97976fcee5703014'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '36d835a1c07b039aa27f599fc81c472563550f96fe449c7dcf88da84afa431b3'
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
