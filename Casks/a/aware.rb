cask "aware" do
  version "1.0.6"
  sha256 "d987999711365f0d925a8e64da8122e1ae501e45e6782fa093264180b0e32b45"

  url "https://github.com/josh/Aware/releases/download/v#{version}/Aware.zip",
      verified: "github.com/josh/Aware/"
  name "Aware"
  desc "Menubar app to track active computer use"
  homepage "https://awaremac.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Aware.app"
end
