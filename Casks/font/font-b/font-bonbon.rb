cask "font-bonbon" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bonbon/Bonbon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bonbon"
  homepage "https://fonts.google.com/specimen/Bonbon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bonbon",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bonbon-Regular.ttf"

  # No zap stanza required
end
