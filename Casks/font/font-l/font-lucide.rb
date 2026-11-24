cask "font-lucide" do
  version "1.79.0"
  sha256 "f128284e6b30a43cf3b70e191ba27fad4f7677cf4b02d4e2862e1e4b6adb25e3"

  url "https://github.com/lucide-icons/lucide/releases/download/#{version}/lucide-font-#{version}.zip"
  name "Lucide"
  desc "Lucide icons as a TrueType font"
  homepage "https://lucide.dev/"

  font "lucide-font/lucide.ttf"

  zap :not_required
end
