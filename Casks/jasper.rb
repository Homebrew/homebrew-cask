cask "jasper" do
  version "1.0.2"
  sha256 "e02557d1bc297aba46f64fab31857bce045ba527fa65f6e7df8b254aa0f75cdb"

  # github.com/jasperapp/jasper/ was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast "https://github.com/jasperapp/jasper/releases.atom"
  name "Jasper"
  desc "Issue reader for GitHub"
  homepage "https://jasperapp.io/"

  app "Jasper.app"

  zap trash: [
    "~/Library/Application Support/jasper",
    "~/Library/Containers/io.jasperapp",
  ]
end
