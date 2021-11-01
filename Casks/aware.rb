cask "aware" do
  version "1.0.6"
  sha256 "d987999711365f0d925a8e64da8122e1ae501e45e6782fa093264180b0e32b45"

  url "https://github.com/josh/Aware/releases/download/v#{version}/Aware.zip",
      verified: "github.com/josh/Aware/"
  name "Aware"
  homepage "https://awaremac.com/"

  app "Aware.app"
end
