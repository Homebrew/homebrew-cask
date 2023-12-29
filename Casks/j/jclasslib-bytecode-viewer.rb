cask "jclasslib-bytecode-viewer" do
  version "6.0.5"
  sha256 "4feec9d7a11ac3895c8f16a2496755af7d20a22f9c18c7c4bc8011b1f388d19c"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  name "jclasslib bytecode viewer"
  desc "Visualize all aspects of compiled Java class files and the contained bytecode"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
