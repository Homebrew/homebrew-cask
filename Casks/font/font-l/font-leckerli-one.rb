cask "font-leckerli-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/leckerlione/LeckerliOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Leckerli One"
  homepage "https://fonts.google.com/specimen/Leckerli+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Leckerli One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LeckerliOne-Regular.ttf"

  # No zap stanza required
end
