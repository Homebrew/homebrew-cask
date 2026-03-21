cask "font-madimi-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/madimione/MadimiOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Madimi One"
  homepage "https://fonts.google.com/specimen/Madimi+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Madimi One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MadimiOne-Regular.ttf"

  # No zap stanza required
end
