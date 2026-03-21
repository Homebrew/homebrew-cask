cask "font-kiwi-maru" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kiwimaru"
  name "Kiwi Maru"
  homepage "https://fonts.google.com/specimen/Kiwi+Maru"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kiwi Maru",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KiwiMaru-Light.ttf"
  font "KiwiMaru-Medium.ttf"
  font "KiwiMaru-Regular.ttf"

  # No zap stanza required
end
