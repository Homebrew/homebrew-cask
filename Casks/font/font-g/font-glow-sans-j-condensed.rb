cask "font-glow-sans-j-condensed" do
  version "0.93"
  sha256 "3b6d38f707d204a2e8341b06ff0402dd9bb7daa095a6d5ab9da132c1966597b5"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansJ-Condensed-v#{version}.zip"
  name "Glow Sans J Condensed"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued

  font "GlowSansJ-Condensed-Bold.otf"
  font "GlowSansJ-Condensed-Book.otf"
  font "GlowSansJ-Condensed-ExtraBold.otf"
  font "GlowSansJ-Condensed-ExtraLight.otf"
  font "GlowSansJ-Condensed-Heavy.otf"
  font "GlowSansJ-Condensed-Light.otf"
  font "GlowSansJ-Condensed-Medium.otf"
  font "GlowSansJ-Condensed-Regular.otf"
  font "GlowSansJ-Condensed-Thin.otf"

  # No zap stanza required
end
