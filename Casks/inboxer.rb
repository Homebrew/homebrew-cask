cask 'inboxer' do
  version '1.0.2'
  sha256 'd60a7f25209602041cfb6e66c09c839a7068894daab7edc6205dbd10847c57bd'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/inboxer-#{version}-mac.zip"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom',
          checkpoint: '2c7ba053eab9a808222369960b35deac26569c4f38f2933f9b13a87fd35b6f7f'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer'

  app 'inboxer.app'
end
