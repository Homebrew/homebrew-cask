cask "font-molle" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/molle/Molle-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Molle"
  homepage "https://fonts.google.com/specimen/Molle"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Molle",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Molle-Regular.ttf"

  # No zap stanza required
end
