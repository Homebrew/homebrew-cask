cask "font-potta-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pottaone/PottaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Potta One"
  homepage "https://fonts.google.com/specimen/Potta+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Potta One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PottaOne-Regular.ttf"

  # No zap stanza required
end
