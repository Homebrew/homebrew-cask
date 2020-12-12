cask "lumen" do
  version "1.2.1"
  sha256 "7cce777641580c53b1b3dea9a90ba361e15f2cc9fce99bc9a6e66770596b4f5a"

  url "https://github.com/anishathalye/lumen/releases/download/v#{version}/Lumen.zip"
  appcast "https://github.com/anishathalye/lumen/releases.atom"
  name "Lumen"
  desc "Magic auto brightness based on screen contents"
  homepage "https://github.com/anishathalye/lumen"

  app "Lumen.app"
end
