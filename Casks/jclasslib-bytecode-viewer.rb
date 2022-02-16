cask "jclasslib-bytecode-viewer" do
  version "6.0.3"
  sha256 "944d53183b325606c54e56cae4e08ba3f0f8c442834128bbba94f6c758c2f2fe"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  name "jclasslib bytecode viewer"
  desc "Visualize all aspects of compiled Java class files and the contained bytecode"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
