cask "jclasslib-bytecode-viewer" do
  version "6.0.4"
  sha256 "aebf40516f1245f08c9d60e1c91904e04dc9b9d1306162fffe9efad89ea026e9"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  name "jclasslib bytecode viewer"
  desc "Visualize all aspects of compiled Java class files and the contained bytecode"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
