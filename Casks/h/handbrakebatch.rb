cask "handbrakebatch" do
  version "2.25"
  sha256 "d5f57d1a7ef9a85b32c800aa8c94ea73420940b6a9e463561df343fe82c64c6c"

  url "https://osomac.com/appcasts/handbrakebatch/HandBrakeBatch_#{version}.zip"
  name "HandBrakeBatch"
  homepage "https://osomac.com/apps/osx/handbrake-batch/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "HandBrakeBatch.app"
end
