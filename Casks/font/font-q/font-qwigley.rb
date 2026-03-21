cask "font-qwigley" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/qwigley/Qwigley-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Qwigley"
  homepage "https://fonts.google.com/specimen/Qwigley"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Qwigley",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Qwigley-Regular.ttf"

  # No zap stanza required
end
