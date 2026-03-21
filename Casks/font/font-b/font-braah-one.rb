cask "font-braah-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/braahone/BraahOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Braah One"
  homepage "https://fonts.google.com/specimen/Braah+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Braah One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BraahOne-Regular.ttf"

  # No zap stanza required
end
