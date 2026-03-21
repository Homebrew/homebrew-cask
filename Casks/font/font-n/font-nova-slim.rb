cask "font-nova-slim" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novaslim/NovaSlim.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Slim"
  homepage "https://fonts.google.com/specimen/Nova+Slim"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nova Slim",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NovaSlim.ttf"

  # No zap stanza required
end
