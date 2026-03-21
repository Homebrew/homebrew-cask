cask "font-battambang" do
  version "8.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/battambang"
  name "Battambang"
  homepage "https://fonts.google.com/specimen/Battambang"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Battambang",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Battambang-Black.ttf"
  font "Battambang-Bold.ttf"
  font "Battambang-Light.ttf"
  font "Battambang-Regular.ttf"
  font "Battambang-Thin.ttf"

  # No zap stanza required
end
