cask :v1 => 'atom' do
  version '1.0.2'
  sha256 '2817c3f77de2bce76660832ace6820c7476ea5a451cb1de196bf396f96014f0e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom'
  name 'Atom'
  homepage 'https://atom.io/'
  license :mit
  tags :vendor => 'Github'

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
                 ],
      :rmdir  => '~/.atom/'
end
