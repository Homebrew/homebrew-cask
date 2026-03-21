cask "font-zen-dots" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zendots/ZenDots-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zen Dots"
  homepage "https://fonts.google.com/specimen/Zen+Dots"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zen Dots",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZenDots-Regular.ttf"

  # No zap stanza required
end
