cask "lumen" do
  version "1.2.2"
  sha256 "608321c996b736b931b9048c85268bc95ec96ebeb40d329cd73656daac4cb440"

  url "https://github.com/anishathalye/lumen/releases/download/v#{version}/Lumen.zip"
  appcast "https://github.com/anishathalye/lumen/releases.atom"
  name "Lumen"
  desc "Magic auto brightness based on screen contents"
  homepage "https://github.com/anishathalye/lumen"

  app "Lumen.app"
end
