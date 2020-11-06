cask "lumen" do
  version "1.2.0"
  sha256 "abfdb99bc1a317c6e6b3d8d5b5696bda786fa1bc8e8983971e74b23d4ef3d1f3"

  url "https://github.com/anishathalye/lumen/releases/download/v#{version}/Lumen.zip"
  appcast "https://github.com/anishathalye/lumen/releases.atom"
  name "Lumen"
  desc "Magic auto brightness based on screen contents :bulb:"
  homepage "https://github.com/anishathalye/lumen"

  app "Lumen.app"
end
