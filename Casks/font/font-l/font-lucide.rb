cask "font-lucide" do
  version "1.83.0"
  sha256 "0140d598fd04bbfb1d3c0b06263c2c66694e699a075ac9a5b0f16d0064aed2f9"

  url "https://github.com/lucide-icons/lucide/releases/download/#{version}/lucide-font-#{version}.zip"
  name "Lucide"
  desc "Lucide icons as a TrueType font"
  homepage "https://lucide.dev/"

  font "lucide-font/lucide.ttf"

  zap :not_required
end
