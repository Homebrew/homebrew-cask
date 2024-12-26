cask "contour" do
  arch arm: "arm", intel: "x86"

  version "0.6.0.7452"
  sha256 arm:   "0bbde7becfd6f7ab5d11c5cfcd266db7f942e91dede8d2898e1f8adabe64aae5",
         intel: "f26f10883e1abc5b0099fcfee69831583058dab72f64f198ec3bbe08c608e916"

  url "https://github.com/contour-terminal/contour/releases/download/v#{version}/contour-#{version}-macOS-#{arch}.dmg"
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
