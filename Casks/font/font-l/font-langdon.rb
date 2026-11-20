cask "font-langdon" do
  version :latest
  sha256 :no_check

  url "https://www.1001fonts.com/download/langdon.zip"
  name "Langdon"
  homepage "https://www.1001fonts.com/langdon-font.html"

  font "Langdon.otf"

  zap :not_required
end
