cask "font-dongle" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dongle"
  name "Dongle"
  homepage "https://fonts.google.com/specimen/Dongle"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dongle",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Dongle-Bold.ttf"
  font "Dongle-Light.ttf"
  font "Dongle-Regular.ttf"

  # No zap stanza required
end
