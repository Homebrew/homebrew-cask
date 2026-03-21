cask "font-oi" do
  version "4.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/oi/Oi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Oi"
  homepage "https://fonts.google.com/specimen/Oi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Oi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Oi-Regular.ttf"

  # No zap stanza required
end
