cask "font-cutive-mono" do
  version "1.110"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cutivemono/CutiveMono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cutive Mono"
  homepage "https://fonts.google.com/specimen/Cutive+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cutive Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CutiveMono-Regular.ttf"

  # No zap stanza required
end
