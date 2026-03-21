cask "font-oxygen-mono" do
  version "0.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/oxygenmono/OxygenMono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Oxygen Mono"
  homepage "https://fonts.google.com/specimen/Oxygen+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Oxygen Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OxygenMono-Regular.ttf"

  # No zap stanza required
end
