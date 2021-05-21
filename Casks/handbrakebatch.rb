cask "handbrakebatch" do
  version "2.25"
  sha256 "d5f57d1a7ef9a85b32c800aa8c94ea73420940b6a9e463561df343fe82c64c6c"

  url "https://osomac.com/appcasts/handbrakebatch/HandBrakeBatch_#{version}.zip"
  name "HandBrakeBatch"
  homepage "https://osomac.com/apps/osx/handbrake-batch/"

  livecheck do
    url "https://osomac.com/appcasts/handbrakebatch/HandBrakeBatch.xml"
    strategy :sparkle do |item|
      item.url[%r{/HandBrakeBatch_(\d+(?:\.\d+)*)\.zip}i, 1]
    end
  end

  app "HandBrakeBatch.app"

  caveats do
    discontinued
  end
end
