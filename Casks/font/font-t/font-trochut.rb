cask "font-trochut" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/trochut"
  name "Trochut"
  homepage "https://fonts.google.com/specimen/Trochut"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Trochut",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Trochut-Bold.ttf"
  font "Trochut-Italic.ttf"
  font "Trochut-Regular.ttf"

  # No zap stanza required
end
