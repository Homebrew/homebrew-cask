cask "jclasslib-bytecode-viewer" do
  version "7.0"
  sha256 "d11612e5d4a92970a356264ec74b960beb12a6f56a028204382720e0dbbfecfb"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  name "jclasslib bytecode viewer"
  desc "Visualise all aspects of compiled Java class files and the contained bytecode"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
