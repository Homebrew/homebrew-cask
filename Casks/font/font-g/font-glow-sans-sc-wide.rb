cask "font-glow-sans-sc-wide" do
  version "0.93"
  sha256 "036eca2916a3636b32d006937d498cc33873317c8bf01057580b21526f59e79b"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansSC-Wide-v#{version}.zip"
  name "Glow Sans SC Wide"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued
  disable! date: "2025-02-19", because: :discontinued

  font "GlowSansSC-Wide-Bold.otf"
  font "GlowSansSC-Wide-Book.otf"
  font "GlowSansSC-Wide-ExtraBold.otf"
  font "GlowSansSC-Wide-ExtraLight.otf"
  font "GlowSansSC-Wide-Heavy.otf"
  font "GlowSansSC-Wide-Light.otf"
  font "GlowSansSC-Wide-Medium.otf"
  font "GlowSansSC-Wide-Regular.otf"
  font "GlowSansSC-Wide-Thin.otf"

  # No zap stanza required
end
