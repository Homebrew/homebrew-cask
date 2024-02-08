cask "altdeploy" do
  version "1.1"
  sha256 "c9f1c27e3c83022fe0fae7abe3ea825792bc799390d3fb5492f8cfb97a9d7f56"

  url "https://github.com/pixelomer/AltDeploy/releases/download/v#{version}/AltDeploy.zip"
  name "AltDeploy"
  homepage "https://github.com/pixelomer/AltDeploy"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: ">= :high_sierra"

  app "AltDeploy.app"
end
