cask "cloudcompare" do
  version :latest
  sha256 :no_check

  url "https://asmaloney.com/download/cloudcompare-mac-os-x/",
      verified: "asmaloney.com/download/cloudcompare-mac-os-x/"
  name "CloudCompare"
  homepage "https://www.danielgm.net/cc/"

  app "CloudCompare.app"
  app "ccViewer.app"
end
