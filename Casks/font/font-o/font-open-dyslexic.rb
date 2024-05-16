cask "font-open-dyslexic" do
  version "20160623-Stable"
  sha256 "3b4a84f573d3f5d75e198bbf362ff6fa812b33d6559dce651e44df455be929cc"

  url "https://codeload.github.com/antijingoist/open-dyslexic/zip/#{version}"
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
