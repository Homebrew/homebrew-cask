cask "alva" do
  version "0.9.1"
  sha256 "bc2f3158691eaccb354a683887d710308bf4375104bb5f115b817b16d85a6677"

  url "https://github.com/meetalva/alva/releases/download/v#{version}/Alva-#{version}-mac.zip",
      verified: "github.com/meetalva/alva/"
  name "Alva"
  desc "Create living prototypes with code components"
  homepage "https://meetalva.io/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Alva.app"
end
