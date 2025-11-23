cask "font-glow-sans-tc-extended" do
  version "0.93"
  sha256 "a1e4745dc320c948875aa38f435886b0c54ab24a4410d3fdba719a854e9b491f"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansTC-Extended-v#{version}.zip"
  name "Glow Sans TC Extended"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued
  disable! date: "2025-02-19", because: :discontinued

  font "GlowSansTC-Extended-Bold.otf"
  font "GlowSansTC-Extended-Book.otf"
  font "GlowSansTC-Extended-ExtraBold.otf"
  font "GlowSansTC-Extended-ExtraLight.otf"
  font "GlowSansTC-Extended-Heavy.otf"
  font "GlowSansTC-Extended-Light.otf"
  font "GlowSansTC-Extended-Medium.otf"
  font "GlowSansTC-Extended-Regular.otf"
  font "GlowSansTC-Extended-Thin.otf"

  # No zap stanza required
end
