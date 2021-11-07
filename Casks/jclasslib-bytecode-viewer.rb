cask "jclasslib-bytecode-viewer" do
  version "6.0.1"
  sha256 "1c413b81ce73b9669e5cb64af16c61af34227788624fd3d92273250268d974c1"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  name "jclasslib bytecode viewer"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
