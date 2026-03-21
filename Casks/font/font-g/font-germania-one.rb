cask "font-germania-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/germaniaone/GermaniaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Germania One"
  homepage "https://fonts.google.com/specimen/Germania+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Germania One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GermaniaOne-Regular.ttf"

  # No zap stanza required
end
