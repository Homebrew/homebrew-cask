cask "font-silkscreen" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/silkscreen"
  name "Silkscreen"
  homepage "https://fonts.google.com/specimen/Silkscreen"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Silkscreen",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Silkscreen-Bold.ttf"
  font "Silkscreen-Regular.ttf"

  # No zap stanza required
end
