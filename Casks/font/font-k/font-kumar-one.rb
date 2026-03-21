cask "font-kumar-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kumarone/KumarOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kumar One"
  homepage "https://fonts.google.com/specimen/Kumar+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kumar One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KumarOne-Regular.ttf"

  # No zap stanza required
end
