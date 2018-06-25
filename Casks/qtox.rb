cask 'qtox' do
  version '1.15.0'
  sha256 '75a07a73dbc3eab13c853e9754e9c4c5dd8b17234ff8b215efb352736f99330b'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
