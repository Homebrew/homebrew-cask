cask "font-opendyslexic" do
  version "20160623-Stable"
  sha256 "f07db722dabcdc359abca2fbb0a0e77a6b2a997db0fe694df30da32f7ec15c96"

  url "https://forge.hackers.town/antijingoist/opendyslexic/archive/#{version}.tar.gz"
  name "OpenDyslexic"
  homepage "https://forge.hackers.town/antijingoist/opendyslexic"

  disable! date: "2026-09-27", because: :unreachable

  font "opendyslexic/otf/OpenDyslexic-Bold.otf"
  font "opendyslexic/otf/OpenDyslexic-BoldItalic.otf"
  font "opendyslexic/otf/OpenDyslexic-Italic.otf"
  font "opendyslexic/otf/OpenDyslexic-Regular.otf"
  font "opendyslexic/otf/OpenDyslexicAlta-Bold.otf"
  font "opendyslexic/otf/OpenDyslexicAlta-BoldItalic.otf"
  font "opendyslexic/otf/OpenDyslexicAlta-Italic.otf"
  font "opendyslexic/otf/OpenDyslexicAlta-Regular.otf"
  font "opendyslexic/otf/OpenDyslexicMono-Regular.otf"

  # No zap stanza required
end
