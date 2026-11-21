cask "font-lucide" do
  version "1.77.0"
  sha256 "f7bb13abd330802d45938dd3d54cb001bcedeb126528c981b7df395a8ca4ccef"

  url "https://github.com/lucide-icons/lucide/releases/download/#{version}/lucide-font-#{version}.zip"
  name "Lucide"
  desc "Lucide icons as a TrueType font"
  homepage "https://lucide.dev/"

  font "lucide-font/lucide.ttf"

  zap :not_required
end
