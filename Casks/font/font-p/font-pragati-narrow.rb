cask "font-pragati-narrow" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/pragatinarrow"
  name "Pragati Narrow"
  homepage "https://fonts.google.com/specimen/Pragati+Narrow"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pragati Narrow",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PragatiNarrow-Bold.ttf"
  font "PragatiNarrow-Regular.ttf"

  # No zap stanza required
end
