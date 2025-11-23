cask "font-glow-sans-sc-compressed" do
  version "0.93"
  sha256 "fe0fa382c8f5be8c1632cbc5837f7da3730b18b4dba12d351812d07d6d6bb56f"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansSC-Compressed-v#{version}.zip"
  name "Glow Sans SC Compressed"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued
  disable! date: "2025-02-19", because: :discontinued

  font "GlowSansSC-Compressed-Bold.otf"
  font "GlowSansSC-Compressed-Book.otf"
  font "GlowSansSC-Compressed-ExtraBold.otf"
  font "GlowSansSC-Compressed-ExtraLight.otf"
  font "GlowSansSC-Compressed-Light.otf"
  font "GlowSansSC-Compressed-Medium.otf"
  font "GlowSansSC-Compressed-Regular.otf"
  font "GlowSansSC-Compressed-Thin.otf"

  # No zap stanza required
end
