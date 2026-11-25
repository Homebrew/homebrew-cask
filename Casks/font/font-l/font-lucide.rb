cask "font-lucide" do
  version "1.80.0"
  sha256 "64f4d4292a9b89d6a112d8f212d8699a482199d08590301b3949b10f92f98137"

  url "https://github.com/lucide-icons/lucide/releases/download/#{version}/lucide-font-#{version}.zip"
  name "Lucide"
  desc "Lucide icons as a TrueType font"
  homepage "https://lucide.dev/"

  font "lucide-font/lucide.ttf"

  zap :not_required
end
