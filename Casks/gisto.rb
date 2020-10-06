cask "gisto" do
  version "1.13.3"
  sha256 "10741de4aa155cff5857acbee80a277ee4907c788207651a593aa0a7b54a21d6"

  # github.com/Gisto/Gisto/ was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast "https://github.com/Gisto/Gisto/releases.atom"
  name "Gisto"
  desc "Snippets management desktop application with (team) sharing options"
  homepage "https://www.gistoapp.com/"

  app "Gisto.app"
end
