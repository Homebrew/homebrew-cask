cask "font-ramabhadra" do
  version "1.0.5"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ramabhadra/Ramabhadra-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ramabhadra"
  homepage "https://fonts.google.com/specimen/Ramabhadra"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ramabhadra",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ramabhadra-Regular.ttf"

  # No zap stanza required
end
