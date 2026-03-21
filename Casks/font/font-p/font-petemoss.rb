cask "font-petemoss" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/petemoss/Petemoss-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Petemoss"
  homepage "https://fonts.google.com/specimen/Petemoss"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Petemoss",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Petemoss-Regular.ttf"

  # No zap stanza required
end
