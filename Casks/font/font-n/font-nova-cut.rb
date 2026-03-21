cask "font-nova-cut" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novacut/NovaCut.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Cut"
  homepage "https://fonts.google.com/specimen/Nova+Cut"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nova Cut",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NovaCut.ttf"

  # No zap stanza required
end
