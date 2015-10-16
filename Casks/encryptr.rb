cask :v1 => 'encryptr' do
  version '1.2.0'
  sha256 '6216e5185755b8f24b2b0a950e3c1b511df11730dca968bff5e42b3ba0ad9bf8'

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
