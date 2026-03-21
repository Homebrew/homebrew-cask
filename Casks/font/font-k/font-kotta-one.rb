cask "font-kotta-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kottaone/KottaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kotta One"
  homepage "https://fonts.google.com/specimen/Kotta+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kotta One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KottaOne-Regular.ttf"

  # No zap stanza required
end
