cask "font-cambo" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cambo/Cambo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cambo"
  homepage "https://fonts.google.com/specimen/Cambo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cambo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cambo-Regular.ttf"

  # No zap stanza required
end
