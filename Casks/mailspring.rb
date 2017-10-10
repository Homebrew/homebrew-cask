cask 'mailspring' do
  version '1.0.1'
  sha256 '4081550429898431dd3fd632af12be6dbcf9a5954d80f0d2c0f0ddbc71bb623e'

  url 'https://updates.getmailspring.com/download?platform=darwin'
  appcast 'https://github.com/Foundry376/Mailspring/releases.atom',
          checkpoint: '8e8f8ed372265019d0d9bc8280a2d241d5b41dadb6408468ae149cc2a09962a9'
  name 'Mailspring'
  homepage 'https://getmailspring.com/'

  auto_updates true

  app 'Mailspring.app'
end
