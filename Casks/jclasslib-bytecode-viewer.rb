cask 'jclasslib-bytecode-viewer' do
  version '5.5'
  sha256 '3c8e04e4560298fa276f7cfd1c4733d3dd049ab06c69e42e1f7b300ea76ccda4'

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/ingokegel/jclasslib/releases.atom'
  name 'jclasslib bytecode viewer'
  homepage 'https://github.com/ingokegel/jclasslib'

  auto_updates true

  app 'jclasslib bytecode viewer.app'

  zap trash: '~/Library/Saved Application State/com.install4j.*'
end
