cask 'cmd-eikana' do
  version '2.2.0'
  sha256 'dde4d9633f3df10f96b08ce8d6f1155eb5cce45efd4c06048facd1abecffeca1'

  url "https://github.com/iMasanari/cmd-eikana/releases/download/v#{version}/eikana-#{version}.app.zip"
  appcast 'https://github.com/iMasanari/cmd-eikana/releases.atom',
          checkpoint: '5e5acb8bea7bb871976592f547fa40366fddeb5e82b90d54fb2930c2828ad8b9'
  name 'cmd-eikana'
  name '⌘英かな'
  homepage 'https://github.com/iMasanari/cmd-eikana'

  app '⌘英かな.app'

  zap delete: '~/Library/Preferences/io.github.imasanari.cmd-eikana.plist'
end
