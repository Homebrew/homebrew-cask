cask "font-dr-sugiyama" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/drsugiyama/DrSugiyama-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dr Sugiyama"
  homepage "https://fonts.google.com/specimen/Dr+Sugiyama"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dr Sugiyama",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DrSugiyama-Regular.ttf"

  # No zap stanza required
end
