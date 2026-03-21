cask "font-boldonse" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/boldonse/Boldonse-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Boldonse"
  homepage "https://fonts.google.com/specimen/Boldonse"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Boldonse",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Boldonse-Regular.ttf"

  # No zap stanza required
end
