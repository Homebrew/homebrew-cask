cask "font-romanesco" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/romanesco/Romanesco-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Romanesco"
  homepage "https://fonts.google.com/specimen/Romanesco"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Romanesco",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Romanesco-Regular.ttf"

  # No zap stanza required
end
