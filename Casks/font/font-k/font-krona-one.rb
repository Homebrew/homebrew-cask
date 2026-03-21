cask "font-krona-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kronaone/KronaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Krona One"
  homepage "https://fonts.google.com/specimen/Krona+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Krona One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KronaOne-Regular.ttf"

  # No zap stanza required
end
