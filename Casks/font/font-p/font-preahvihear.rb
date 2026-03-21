cask "font-preahvihear" do
  version "8.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/preahvihear/Preahvihear-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Preahvihear"
  homepage "https://fonts.google.com/specimen/Preahvihear"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Preahvihear",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Preahvihear-Regular.ttf"

  # No zap stanza required
end
