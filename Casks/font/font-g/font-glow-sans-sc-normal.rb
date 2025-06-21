cask "font-glow-sans-sc-normal" do
  version "0.93"
  sha256 "aa2e1fdb20337113a1d2670b695bfee83910eefa2e48f51c704e5f4a9f8ec9f1"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansSC-Normal-v#{version}.zip"
  name "Glow Sans SC Normal"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued
  disable! date: "2025-02-19", because: :discontinued

  font "GlowSansSC-Normal-Bold.otf"
  font "GlowSansSC-Normal-Book.otf"
  font "GlowSansSC-Normal-ExtraBold.otf"
  font "GlowSansSC-Normal-ExtraLight.otf"
  font "GlowSansSC-Normal-Heavy.otf"
  font "GlowSansSC-Normal-Light.otf"
  font "GlowSansSC-Normal-Medium.otf"
  font "GlowSansSC-Normal-Regular.otf"
  font "GlowSansSC-Normal-Thin.otf"

  # No zap stanza required
end
