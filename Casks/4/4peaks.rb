cask "4peaks" do
  version "1.8"
  sha256 :no_check

  url "https://downloads.nucleobytes.com/4peaks.dmg"
  name "4Peaks"
  desc "Visualize and edit DNA sequence trace files"
  homepage "https://nucleobytes.com/4peaks/index.html"

  livecheck do
    url :homepage
    regex(/"product-version">v?\s+?(\d+(?:\.\d+)+)[\s<]/i)
  end

  app "4Peaks.app"
end
