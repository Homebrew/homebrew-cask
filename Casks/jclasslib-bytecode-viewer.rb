cask 'jclasslib-bytecode-viewer' do
  version '5.3.1'
  sha256 'fa3a370b9f3aa4dfce741a8ab7833b00f61a4fb9e998f5bd2bb3ece6c6218601'

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/ingokegel/jclasslib/releases.atom'
  name 'jclasslib bytecode viewer'
  homepage 'https://github.com/ingokegel/jclasslib'

  auto_updates true

  app 'jclasslib bytecode viewer.app'

  zap trash: '~/Library/Saved Application State/com.install4j.*'
end
