cask "jclasslib-bytecode-viewer" do
  version "5.8"
  sha256 "e62d16c01e25628d2b69f951e01f875f64d1a72e391f131643f85b6f993548d0"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  appcast "https://github.com/ingokegel/jclasslib/releases.atom"
  name "jclasslib bytecode viewer"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
