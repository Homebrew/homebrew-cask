cask "font-federo" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/federo/Federo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Federo"
  homepage "https://fonts.google.com/specimen/Federo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Federo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Federo-Regular.ttf"

  # No zap stanza required
end
