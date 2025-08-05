cask "font-open-dyslexic" do
  version "20160623-Stable"
  sha256 "a44fde7d5fcf1e3825d00de20f7d71fb7b339a7e71067cd9566e8ab16692802a"

  url "https://github.com/antijingoist/open-dyslexic/archive/refs/tags/#{version}.tar.gz"
  name "OpenDyslexic"
  homepage "https://github.com/antijingoist/open-dyslexic"

  font "open-dyslexic-#{version}/otf/OpenDyslexic-Bold.otf"
  font "open-dyslexic-#{version}/otf/OpenDyslexic-BoldItalic.otf"
  font "open-dyslexic-#{version}/otf/OpenDyslexic-Italic.otf"
  font "open-dyslexic-#{version}/otf/OpenDyslexic-Regular.otf"
  font "open-dyslexic-#{version}/otf/OpenDyslexicAlta-Bold.otf"
  font "open-dyslexic-#{version}/otf/OpenDyslexicAlta-BoldItalic.otf"
  font "open-dyslexic-#{version}/otf/OpenDyslexicAlta-Italic.otf"
  font "open-dyslexic-#{version}/otf/OpenDyslexicAlta-Regular.otf"
  font "open-dyslexic-#{version}/otf/OpenDyslexicMono-Regular.otf"

  # No zap stanza required
end
