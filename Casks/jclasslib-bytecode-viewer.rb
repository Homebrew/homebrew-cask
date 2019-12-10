cask 'jclasslib-bytecode-viewer' do
  version '5.4'
  sha256 'abaed92ec3b3fb0150bee19deace4e070adf7a7f406c19f1bb5d20ea4039e5ea'

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/ingokegel/jclasslib/releases.atom'
  name 'jclasslib bytecode viewer'
  homepage 'https://github.com/ingokegel/jclasslib'

  auto_updates true

  app 'jclasslib bytecode viewer.app'

  zap trash: '~/Library/Saved Application State/com.install4j.*'
end
