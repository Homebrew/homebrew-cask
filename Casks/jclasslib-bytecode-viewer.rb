cask 'jclasslib-bytecode-viewer' do
  version '5.2'
  sha256 '50771508ee35f57f138f46a0def4f31927f00d3f1275c25259247faf223fa7b4'

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/ingokegel/jclasslib/releases.atom',
          checkpoint: 'bc4fe9a7dd836e7b5c3fc8b628bfcc8cb376570b999894742c350a0843c3a918'
  name 'jclasslib bytecode viewer'
  homepage 'https://github.com/ingokegel/jclasslib'

  auto_updates true

  app 'jclasslib bytecode viewer.app'

  zap delete: '~/Library/Saved Application State/com.install4j.*'
end
