cask "font-orelega-one" do
  version "1.1"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/orelegaone/OrelegaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Orelega One"
  homepage "https://fonts.google.com/specimen/Orelega+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Orelega One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OrelegaOne-Regular.ttf"

  # No zap stanza required
end
