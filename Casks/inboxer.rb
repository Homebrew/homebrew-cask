cask 'inboxer' do
  version '1.1.2'
  sha256 '5e3ae2901946f1fae8b2a54fd8b488b57674d921742f16e8bd8ac16bcef973ea'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/inboxer-#{version}-mac.zip"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer'

  app 'inboxer.app'
end
