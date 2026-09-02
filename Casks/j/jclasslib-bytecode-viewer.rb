cask "jclasslib-bytecode-viewer" do
  version "7.1"
  sha256 "e800e7ecf112d1e13ac46a1419cb27e5321a22250ff0db820db3962226df6927"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  name "jclasslib bytecode viewer"
  desc "Visualise all aspects of compiled Java class files and the contained bytecode"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true
  depends_on :macos

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
