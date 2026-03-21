cask "font-rock-salt" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/rocksalt/RockSalt-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rock Salt"
  homepage "https://fonts.google.com/specimen/Rock+Salt"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rock Salt",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RockSalt-Regular.ttf"

  # No zap stanza required
end
