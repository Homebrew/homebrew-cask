cask "bestres" do
  version "1.0,100,1426778671"
  sha256 "1b706a3550edbc1411bdc4665490cce3b22cef68a6abae82af0fbd46370ce697"

  url "https://dl.devmate.com/com.icyberon.BestRes/#{version.csv.second}/#{version.csv.third}/BestRes-#{version.csv.second}.zip",
      verified: "devmate.com/com.icyberon.BestRes/"
  name "BestRes"
  desc "Quickly change your screen resolution from the menubar"
  homepage "https://bestres.wojtek.im/"

  deprecate! date: "2024-09-07", because: :unmaintained

  app "BestRes.app"

  caveats do
    requires_rosetta
  end
end
