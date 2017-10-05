cask 'mailspring' do
  version '1.0.1'
  sha256 '029d685fc2e3784ffda56caaada911f2c6f01d246d1be2e91015871cf27e4b87'

  url 'https://updates.getmailspring.com/download?platform=darwin'
  appcast 'https://github.com/Foundry376/Mailspring/releases.atom',
          checkpoint: '4a7b2ad0b5a3851387b5af80aa1db5eaef0960b2ea6f364e4ba96b62490735dd'
  name 'Mailspring'
  homepage 'https://getmailspring.com/'

  auto_updates true

  app 'Mailspring.app'
end
