cask "font-psudofont-liga-mono" do
  version "2.1.1"
  sha256 "178762fa37eb529eed155e7b33937a18ff58ecc2f76d44d13ceff62535d4319a"

  url "https://github.com/psudo-dev/psudofont-liga-mono/releases/download/v.#{version}/psudoFont_Liga_Mono_v.#{version}.zip"
  name "psudoFont Liga Mono"
  homepage "https://github.com/psudo-dev/psudofont-liga-mono"

  font "psudoFont Liga Mono/psudoFont_Liga_Mono_-_Bold.ttf"
  font "psudoFont Liga Mono/psudoFont_Liga_Mono_-_BoldItalic.ttf"
  font "psudoFont Liga Mono/psudoFont_Liga_Mono_-_Italic.ttf"
  font "psudoFont Liga Mono/psudoFont_Liga_Mono_-_Regular.ttf"

  # No zap stanza required
end
