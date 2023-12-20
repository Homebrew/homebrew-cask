cask "contour" do
  version "0.4.0.6245"
  sha256 "9aada387d7f213609707dd6c8f7730d4d23769b2c4a7f16bfe37bab92663337c"

  url "https://github.com/contour-terminal/contour/releases/download/v#{version}/contour-#{version}-osx.dmg"
  name "Contour"
  desc "Terminal emulator"
  homepage "https://github.com/contour-terminal/contour/"

  app "Contour.app"
  binary "Contour.app/Contents/MacOS/contour"
  binary "Contour.app/Contents/Resources/shell-integration/shell-integration.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_contour"
  binary "Contour.app/Contents/Resources/terminfo/63/contour",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/63/contour"
  binary "Contour.app/Contents/Resources/terminfo/63/contour-latest",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/63/contour-latest"

  zap trash: "~/.config/contour"
end
