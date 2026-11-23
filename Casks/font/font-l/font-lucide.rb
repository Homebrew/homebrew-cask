cask "font-lucide" do
  version "1.78.0"
  sha256 "331fef4cd4413312dc112b10c6cc3b45163efd2d4d9d3b3cda3671aec9f860ab"

  url "https://github.com/lucide-icons/lucide/releases/download/#{version}/lucide-font-#{version}.zip"
  name "Lucide"
  desc "Lucide icons as a TrueType font"
  homepage "https://lucide.dev/"

  font "lucide-font/lucide.ttf"

  zap :not_required
end
