cask "contour" do
  version "0.4.2.6429"
  sha256 "cddf99817c73140413723e22eaed09f0e04c5de88a8778eb49ce454b6ae07c19"

  url "https://github.com/contour-terminal/contour/releases/download/v#{version}/contour-#{version}-osx.dmg"
  name "contour"
  desc "Terminal emulator"
  homepage "https://github.com/contour-terminal/contour/"

  app "contour.app"
  binary "contour.app/Contents/MacOS/contour"
  binary "contour.app/Contents/Resources/shell-integration/shell-integration.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_contour"
  binary "contour.app/Contents/Resources/terminfo/63/contour",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/63/contour"

  zap trash: "~/.config/contour"
end
