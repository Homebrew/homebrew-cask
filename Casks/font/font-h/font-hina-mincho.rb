cask "font-hina-mincho" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hinamincho/HinaMincho-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hina Mincho"
  homepage "https://fonts.google.com/specimen/Hina+Mincho"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hina Mincho",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HinaMincho-Regular.ttf"

  # No zap stanza required
end
