cask "jclasslib-bytecode-viewer" do
  version "7.1"
  sha256 "b99a7dd84b2525e75d27ea9170f1da29741c35ea10d22a65d15fd2191f04a739"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  name "jclasslib bytecode viewer"
  desc "Visualise all aspects of compiled Java class files and the contained bytecode"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true
  depends_on :macos

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
