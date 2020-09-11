cask "alva" do
  version "0.9.1"
  sha256 "bc2f3158691eaccb354a683887d710308bf4375104bb5f115b817b16d85a6677"

  # github.com/meetalva/alva/ was verified as official when first introduced to the cask
  url "https://github.com/meetalva/alva/releases/download/v#{version}/Alva-#{version}-mac.zip"
  appcast "https://github.com/meetalva/alva/releases.atom"
  name "Alva"
  desc "Create living prototypes with code components"
  homepage "https://meetalva.io/"

  app "Alva.app"
end
