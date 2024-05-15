cask "font-glow-sans-tc-normal" do
  version "0.93"
  sha256 "16e8a28001ab1b29887dbf636fb3623e413178c4b2fcb82604a66bb9d1806547"

  url "https://github.com/welai/glow-sans/releases/download/v#{version}/GlowSansTC-Normal-v#{version}.zip"
  name "Glow Sans TC Normal"
  homepage "https://github.com/welai/glow-sans"

  deprecate! date: "2024-02-17", because: :discontinued

  font "GlowSansTC-Normal-Bold.otf"
  font "GlowSansTC-Normal-Book.otf"
  font "GlowSansTC-Normal-ExtraBold.otf"
  font "GlowSansTC-Normal-ExtraLight.otf"
  font "GlowSansTC-Normal-Heavy.otf"
  font "GlowSansTC-Normal-Light.otf"
  font "GlowSansTC-Normal-Medium.otf"
  font "GlowSansTC-Normal-Regular.otf"
  font "GlowSansTC-Normal-Thin.otf"

  # No zap stanza required
end
