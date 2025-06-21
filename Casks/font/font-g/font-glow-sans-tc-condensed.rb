cask "font-glow-sans-tc-condensed" do
  version "0.93"
  sha256 "3ebe0b46abecd7a0f8d6232dd310205c38ab3d30ab624bdba18fae591bfd5d50"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansTC-Condensed-v#{version}.zip"
  name "Glow Sans TC Condensed"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued
  disable! date: "2025-02-19", because: :discontinued

  font "GlowSansTC-Condensed-Bold.otf"
  font "GlowSansTC-Condensed-Book.otf"
  font "GlowSansTC-Condensed-ExtraBold.otf"
  font "GlowSansTC-Condensed-ExtraLight.otf"
  font "GlowSansTC-Condensed-Heavy.otf"
  font "GlowSansTC-Condensed-Light.otf"
  font "GlowSansTC-Condensed-Medium.otf"
  font "GlowSansTC-Condensed-Regular.otf"
  font "GlowSansTC-Condensed-Thin.otf"

  # No zap stanza required
end
