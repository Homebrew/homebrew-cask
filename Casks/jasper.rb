cask "jasper" do
  version "1.0.1"
  sha256 "bd7ca43e8e5a5243281b30f81f0f075d1f4adad3427106fd461a4964d2ec164e"

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
