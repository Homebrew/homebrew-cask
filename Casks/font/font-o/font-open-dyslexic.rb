cask "font-open-dyslexic" do
  version "20160623-Stable"
  sha256 "06e6e219bbf5fe4999921f94a34e61d7d4b961fea19fdd80290bbea08cc42e8c"

  url "https://forge.hackers.town/antijingoist/open-dyslexic/archive/#{version}.tar.gz"
  name "OpenDyslexic"
  homepage "https://forge.hackers.town/antijingoist/open-dyslexic"

  livecheck do
    url "https://forge.hackers.town/antijingoist/open-dyslexic.git"
  end

  font "open-dyslexic/otf/OpenDyslexic-Bold.otf"
  font "open-dyslexic/otf/OpenDyslexic-BoldItalic.otf"
  font "open-dyslexic/otf/OpenDyslexic-Italic.otf"
  font "open-dyslexic/otf/OpenDyslexic-Regular.otf"
  font "open-dyslexic/otf/OpenDyslexicAlta-Bold.otf"
  font "open-dyslexic/otf/OpenDyslexicAlta-BoldItalic.otf"
  font "open-dyslexic/otf/OpenDyslexicAlta-Italic.otf"
  font "open-dyslexic/otf/OpenDyslexicAlta-Regular.otf"
  font "open-dyslexic/otf/OpenDyslexicMono-Regular.otf"

  # No zap stanza required
end
