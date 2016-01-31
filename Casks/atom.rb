cask 'atom' do
  version '1.4.1'
  sha256 '269aa9b68a57cd5cebd924c86eff42471005ebb74114aef7b6e0e881965d9304'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  # github.com verified as official when first introduced to the cask
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: 'ce646677e7049b0adc3aacf827d010649c52948e32a4d00df973db946f79add4'
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
