cask "font-nova-oval" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novaoval/NovaOval.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Oval"
  homepage "https://fonts.google.com/specimen/Nova+Oval"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nova Oval",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NovaOval.ttf"

  # No zap stanza required
end
