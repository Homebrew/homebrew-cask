cask "font-sintony" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sintony"
  name "Sintony"
  homepage "https://fonts.google.com/specimen/Sintony"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sintony",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sintony-Bold.ttf"
  font "Sintony-Regular.ttf"

  # No zap stanza required
end
