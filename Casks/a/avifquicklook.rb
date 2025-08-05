cask "avifquicklook" do
  version "1.2.0"
  sha256 "b61bbcb1463cd3cdd2612aa43312852c77094e3212e6e5dce563d0e3b693d0da"

  url "https://github.com/dreampiggy/AVIFQuickLook/releases/download/#{version}/AVIFQuickLook.qlgenerator.zip"
  name "AVIFQuickLook"
  desc "Quick Look Plugin for AVIF images"
  homepage "https://github.com/dreampiggy/AVIFQuickLook"

  qlplugin "AVIFQuickLook.qlgenerator"

  # No zap stanza required
end
