cask "framer-x" do
  version "36854,1590141192"
  sha256 "ff8d2ea3ad84600942c25466e0fbc8efbf5cf0fa9995a8ac6796442a5e3e2359"

  url "https://dl.framer.com/com.framer.x/#{version.csv.first}/#{version.csv.second}/FramerX-#{version.csv.first}.zip"
  name "Framer X"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://framer.com/"

  disable! date: "2024-01-01", because: "download artifact not available"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Framer X.app"

  caveats do
    <<~EOS
      This software has been deprecated in favor of Framer Desktop (framer cask).
      Your Framer X license will be honoured on the new software:

        https://www.framer.com/support/using-framer/framer-x/
    EOS
  end
end
