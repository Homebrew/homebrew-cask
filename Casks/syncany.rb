cask :v1 => 'syncany' do
  version '0.4.5-alpha'
  sha256 '00e03cd3788a438a82c20d5c4ae0d13e69b6eec865b96084095c18aee4470a67'

  url "https://get.syncany.org/dist/releases/syncany-#{version}-x86_64.app.zip"
  name 'Syncany'
  homepage 'https://syncany.org'
  license :gpl

  app 'Syncany.app'

  zap :delete => '~/.config/syncany'
end
