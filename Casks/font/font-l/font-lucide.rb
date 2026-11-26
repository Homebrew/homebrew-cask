cask "font-lucide" do
  version "1.81.0"
  sha256 "17f7712eb5d8ca66a8de8b5bd35c971b7c0b617d9d7ba7be4d344a29f0ef3116"

  url "https://github.com/lucide-icons/lucide/releases/download/#{version}/lucide-font-#{version}.zip"
  name "Lucide"
  desc "Lucide icons as a TrueType font"
  homepage "https://lucide.dev/"

  font "lucide-font/lucide.ttf"

  zap :not_required
end
