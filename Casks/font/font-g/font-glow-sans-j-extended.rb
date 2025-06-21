cask "font-glow-sans-j-extended" do
  version "0.93"
  sha256 "520cbd2f32717bd8acb4365ef4487d10fe13d4e7e12c79e9727c48b47bfa0b74"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansJ-Extended-v#{version}.zip"
  name "Glow Sans J Extended"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued
  disable! date: "2025-02-19", because: :discontinued

  font "GlowSansJ-Extended-Bold.otf"
  font "GlowSansJ-Extended-Book.otf"
  font "GlowSansJ-Extended-ExtraBold.otf"
  font "GlowSansJ-Extended-ExtraLight.otf"
  font "GlowSansJ-Extended-Heavy.otf"
  font "GlowSansJ-Extended-Light.otf"
  font "GlowSansJ-Extended-Medium.otf"
  font "GlowSansJ-Extended-Regular.otf"
  font "GlowSansJ-Extended-Thin.otf"

  # No zap stanza required
end
