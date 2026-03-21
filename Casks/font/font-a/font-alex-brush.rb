cask "font-alex-brush" do
  version "1.111"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alexbrush/AlexBrush-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alex Brush"
  homepage "https://fonts.google.com/specimen/Alex+Brush"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alex Brush",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AlexBrush-Regular.ttf"

  # No zap stanza required
end
