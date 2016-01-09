cask 'atom' do
  version '1.3.3'
  sha256 '06652ad758fd784ccadb6e265f9cdc0069b2f455312b46d36475d485c79fcd59'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          :sha256 => 'f6eb5ed94e0d68fd64ad7be63ddacfaea7b3e29e237648c44c3b22e87c8b5ef8'
  name 'Github Atom'
  homepage 'https://atom.io/'
  license :mit

  auto_updates true
  depends_on :macos => '>= :mountain_lion'

  app 'Atom.app'
  binary 'Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm', :target => 'apm'
  binary 'Atom.app/Contents/Resources/app/atom.sh', :target => 'atom'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                   '~/.atom',
                   '~/Library/Application Support/ShipIt_stderr.log',
                   '~/Library/Application Support/Atom',
                   '~/Library/Application Support/ShipIt_stdout.log',
                   '~/Library/Application Support/com.github.atom.ShipIt',
                   '~/Library/Caches/com.github.atom',
                   '~/Library/Preferences/com.github.atom.plist',
                 ]
end
