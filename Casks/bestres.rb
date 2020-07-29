cask "bestres" do
  version "1.0.0,1426778671"
  sha256 "1b706a3550edbc1411bdc4665490cce3b22cef68a6abae82af0fbd46370ce697"

  # devmate.com/com.icyberon.BestRes/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.icyberon.BestRes/#{version.before_comma.no_dots}/#{version.after_comma}/BestRes-#{version.before_comma.no_dots}.zip"
  appcast "https://updates.devmate.com/com.icyberon.BestRes.xml"
  name "BestRes"
  homepage "https://bestres.wojtek.im/"

  depends_on macos: ">= :yosemite"

  app "BestRes.app"
end
