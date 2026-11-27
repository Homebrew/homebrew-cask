cask "font-lucide" do
  version "1.82.0"
  sha256 "2b9b3d15bdea80fa358f972d4cf3e65c387fbb23fec5a40088f76d44208f4cb7"

  url "https://github.com/lucide-icons/lucide/releases/download/#{version}/lucide-font-#{version}.zip"
  name "Lucide"
  desc "Lucide icons as a TrueType font"
  homepage "https://lucide.dev/"

  font "lucide-font/lucide.ttf"

  zap :not_required
end
