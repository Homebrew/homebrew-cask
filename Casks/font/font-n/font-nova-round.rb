cask "font-nova-round" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novaround/NovaRound.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Round"
  homepage "https://fonts.google.com/specimen/Nova+Round"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nova Round",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NovaRound.ttf"

  # No zap stanza required
end
