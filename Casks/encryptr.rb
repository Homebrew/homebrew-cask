cask :v1 => 'encryptr' do
  version '1.1.0'
  sha256 '95d76eaed329cb7e8725a4ca02380aeab8cc67c9b942ee8d24bcb356c195aa8b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/devgeeks/Encryptr/releases/download/v#{version}/Encryptr-v#{version}-mac.dmg"
  appcast 'https://github.com/devgeeks/Encryptr/releases.atom'
  name 'Encryptr'
  homepage 'https://encryptr.org/'
  license :gpl
  tags :vendor => 'Devgeeks'

  app 'Encryptr.app'

  zap :delete => [
                  '~/Library/Preferences/org.devgeeks.encryptr.plist',
                  '~/Library/Saved Application State/org.devgeeks.encryptr.savedState',
                 ]
end
