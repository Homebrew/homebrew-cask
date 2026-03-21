cask "font-castoro-titling" do
  version "2.04"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/castorotitling/CastoroTitling-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Castoro Titling"
  homepage "https://fonts.google.com/specimen/Castoro+Titling"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Castoro Titling",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CastoroTitling-Regular.ttf"

  # No zap stanza required
end
