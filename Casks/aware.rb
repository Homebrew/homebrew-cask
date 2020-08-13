cask "aware" do
  version "1.0.5"
  sha256 "be402c451387555348864df72f31b63845a42423a8debe67304efdd6138a99cb"

  # github.com/josh/Aware/ was verified as official when first introduced to the cask
  url "https://github.com/josh/Aware/releases/download/v#{version}/Aware.app.zip"
  appcast "https://github.com/josh/Aware/releases.atom"
  name "Aware"
  homepage "https://awaremac.com/"

  app "Aware.app"
end
