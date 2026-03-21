cask "font-lovers-quarrel" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/loversquarrel/LoversQuarrel-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lovers Quarrel"
  homepage "https://fonts.google.com/specimen/Lovers+Quarrel"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lovers Quarrel",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LoversQuarrel-Regular.ttf"

  # No zap stanza required
end
