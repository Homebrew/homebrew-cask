cask 'jclasslib-bytecode-viewer' do
  version '5.5.1'
  sha256 'dd158ca2c71dacaeec163851c5b6473d7213dc2bb3d1b2e0437f9a4e73bd1bfe'

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/ingokegel/jclasslib/releases.atom'
  name 'jclasslib bytecode viewer'
  homepage 'https://github.com/ingokegel/jclasslib'

  auto_updates true

  app 'jclasslib bytecode viewer.app'

  zap trash: '~/Library/Saved Application State/com.install4j.*'
end
