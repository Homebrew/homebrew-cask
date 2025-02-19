cask "font-glow-sans-j-compressed" do
  version "0.93"
  sha256 "4dd8cb38ea428484d47ff22bbd87f1f6070d9b5b255c62994aa2ed2dacfb73fe"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansJ-Compressed-v#{version}.zip"
  name "Glow Sans J Compressed"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued
  disable! date: "2025-02-19", because: :discontinued

  font "GlowSansJ-Compressed-Bold.otf"
  font "GlowSansJ-Compressed-Book.otf"
  font "GlowSansJ-Compressed-ExtraBold.otf"
  font "GlowSansJ-Compressed-ExtraLight.otf"
  font "GlowSansJ-Compressed-Light.otf"
  font "GlowSansJ-Compressed-Medium.otf"
  font "GlowSansJ-Compressed-Regular.otf"
  font "GlowSansJ-Compressed-Thin.otf"

  # No zap stanza required
end
