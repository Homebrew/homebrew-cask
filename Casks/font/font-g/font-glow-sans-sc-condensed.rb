cask "font-glow-sans-sc-condensed" do
  version "0.93"
  sha256 "9eb59505b8b6a863f8b61b9941fd2ac4b748e501d5c272987c3408052b0765aa"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansSC-Condensed-v#{version}.zip"
  name "Glow Sans SC Condensed"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued
  disable! date: "2025-02-19", because: :discontinued

  font "GlowSansSC-Condensed-Bold.otf"
  font "GlowSansSC-Condensed-Book.otf"
  font "GlowSansSC-Condensed-ExtraBold.otf"
  font "GlowSansSC-Condensed-ExtraLight.otf"
  font "GlowSansSC-Condensed-Heavy.otf"
  font "GlowSansSC-Condensed-Light.otf"
  font "GlowSansSC-Condensed-Medium.otf"
  font "GlowSansSC-Condensed-Regular.otf"
  font "GlowSansSC-Condensed-Thin.otf"

  # No zap stanza required
end
