cask 'jclasslib-bytecode-viewer' do
  version '5.1'
  sha256 '02231f57c3672851ea3ce8d9a304641a3c278e4e71abb73067f9db0c6e5f5d64'

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  name 'jclasslib bytecode viewer'
  homepage 'https://github.com/ingokegel/jclasslib'

  auto_updates true

  app "jclasslib bytecode viewer.app"

  zap delete: '~/Library/Saved Application State/com.install4j.8931-3388-4457-4383.404488187.savedState'
end
