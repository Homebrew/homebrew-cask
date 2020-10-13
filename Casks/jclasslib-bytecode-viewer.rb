cask "jclasslib-bytecode-viewer" do
  version "5.7"
  sha256 "f742ea0994d9f3292d0727d2360aa744f583d9d7daea80043c30a6e64ea3f002"

  url "https://github.com/ingokegel/jclasslib/releases/download/#{version}/jclasslib_macos_#{version.dots_to_underscores}.dmg"
  appcast "https://github.com/ingokegel/jclasslib/releases.atom"
  name "jclasslib bytecode viewer"
  homepage "https://github.com/ingokegel/jclasslib"

  auto_updates true

  app "jclasslib bytecode viewer.app"

  zap trash: "~/Library/Saved Application State/com.install4j.*"
end
