cask 'jclasslib-bytecode-viewer' do
  version '5.3.2'
  sha256 '8d2c47063bf5c7b5a6c5528ec5a2e6a168d10f338417b9e0f30854022de97120'

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/ingokegel/jclasslib/releases.atom'
  name 'jclasslib bytecode viewer'
  homepage 'https://github.com/ingokegel/jclasslib'

  auto_updates true

  app 'jclasslib bytecode viewer.app'

  zap trash: '~/Library/Saved Application State/com.install4j.*'
end
