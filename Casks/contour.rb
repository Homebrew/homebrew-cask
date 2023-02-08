cask "contour" do
  version "0.3.10.257"
  sha256 "c1d72c8772a66a222b35a463cc49318cd584e19f41e0fbd6ba6a75813de91cc3"

  url "https://github.com/contour-terminal/contour/releases/download/v#{version}/contour-#{version}-osx.dmg"
  name "Contour"
  desc "Terminal emulator"
  homepage "https://github.com/contour-terminal/contour/"

  app "Contour.app"
  binary "#{appdir}/Contour.app/Contents/MacOS/contour"
  binary "#{appdir}/Contour.app/Contents/Resources/shell-integration.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_contour"
  binary "#{appdir}/Contour.app/Contents/Resources/terminfo/63/contour",
         target: "#{ENV.fetch("TERMINFO", "#{Dir.home}/.terminfo")}/63/contour"
  binary "#{appdir}/Contour.app/Contents/Resources/terminfo/63/contour-latest",
         target: "#{ENV.fetch("TERMINFO", "#{Dir.home}/.terminfo")}/63/contour-latest"

  zap trash: "~/.config/contour"
end
