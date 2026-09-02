cask "font-psudofont-liga-mono" do
  version "2.2.0"
  sha256 "d6f214cd8fe4e2bf2e5fd1799c7f6e0f48ace5501d780b3249f91bdffcf97f07"

  url "https://github.com/psudo-dev/psudofont-liga-mono/releases/download/v.#{version}/psudoFont_Liga_Mono_v.#{version}.zip"
  name "psudoFont Liga Mono"
  homepage "https://github.com/psudo-dev/psudofont-liga-mono"

  font "psudoFont_Liga_Mono_V.#{version}/psudoFont_Liga_Mono_-_Bold.ttf"
  font "psudoFont_Liga_Mono_V.#{version}/psudoFont_Liga_Mono_-_BoldItalic.ttf"
  font "psudoFont_Liga_Mono_V.#{version}/psudoFont_Liga_Mono_-_Italic.ttf"
  font "psudoFont_Liga_Mono_V.#{version}/psudoFont_Liga_Mono_-_Regular.ttf"

  # No zap stanza required
end
