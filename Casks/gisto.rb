cask "gisto" do
  version "1.13.4"
  sha256 "74043aa1f632ef86f5267610b5a9d6fcd2b35cc804aae654a67a4ee41f6a7e2f"

  # github.com/Gisto/Gisto/ was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast "https://github.com/Gisto/Gisto/releases.atom"
  name "Gisto"
  desc "Snippets management desktop application with (team) sharing options"
  homepage "https://www.gistoapp.com/"

  app "Gisto.app"
end
