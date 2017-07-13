cask 'jclasslib-bytecode-viewer' do
  version '5.2'
  sha256 '50771508ee35f57f138f46a0def4f31927f00d3f1275c25259247faf223fa7b4'

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/ingokegel/jclasslib/releases.atom',
          checkpoint: '983038f2613ba53c0186c85a30e2d80bd848c0ef8b33163d3f8c24b2336f7290'
  name 'jclasslib bytecode viewer'
  homepage 'https://github.com/ingokegel/jclasslib'

  auto_updates true

  app 'jclasslib bytecode viewer.app'

  zap delete: '~/Library/Saved Application State/com.install4j.*'
end
