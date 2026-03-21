cask "font-nova-flat" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novaflat/NovaFlat.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Flat"
  homepage "https://fonts.google.com/specimen/Nova+Flat"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nova Flat",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NovaFlat.ttf"

  # No zap stanza required
end
