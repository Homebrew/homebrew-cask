cask 'guijs' do
  version '0.1.0-tauri'
  sha256 'd3e4ae200dab3aa510f0e4558d2be09036bea9c24bb5c29ce596c133d6c8cb3b'

  # github.com/Akryum/guijs was verified as official when first introduced to the cask
  url "https://github.com/Akryum/guijs/releases/download/v#{version}/guijs-macos.app.zip"
  appcast 'https://github.com/Akryum/guijs/releases.atom'
  name 'guijs'
  homepage 'https://guijs.dev/'

  app 'guijs.app'

  zap trash: '~/Library/Caches/guijs'
end
