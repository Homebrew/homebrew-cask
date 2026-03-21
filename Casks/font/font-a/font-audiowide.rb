cask "font-audiowide" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/audiowide/Audiowide-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Audiowide"
  homepage "https://fonts.google.com/specimen/Audiowide"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Audiowide",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Audiowide-Regular.ttf"

  # No zap stanza required
end
