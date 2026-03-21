cask "font-moirai-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moiraione/MoiraiOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Moirai One"
  homepage "https://fonts.google.com/specimen/Moirai+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Moirai One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MoiraiOne-Regular.ttf"

  # No zap stanza required
end
