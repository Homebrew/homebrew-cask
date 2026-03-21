cask "font-ga-maamli" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gamaamli/GaMaamli-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ga Maamli"
  homepage "https://fonts.google.com/specimen/Ga+Maamli"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ga Maamli",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GaMaamli-Regular.ttf"

  # No zap stanza required
end
