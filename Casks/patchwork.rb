cask 'patchwork' do
  version '3.6.4'
  sha256 '36a1a240348a9fe580f7f8c42bf7b3139328b4b62894f700fe95661bf29b1fc2'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: 'b8dbd728b0a113a57572f4860cea17ba39daa10b722e767ed0cf376085821793'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
