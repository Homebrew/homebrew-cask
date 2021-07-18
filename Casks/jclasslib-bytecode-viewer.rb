cask "jclasslib-bytecode-viewer" do
  version "6.0"
  sha256 "d44958c1dc3eb48cfe1736ad3ed2a5ecfe1a1a09f57d42ccb3ec3429dbdc8c73"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  name "jclasslib bytecode viewer"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
