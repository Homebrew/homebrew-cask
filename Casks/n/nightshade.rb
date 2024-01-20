cask "nightshade" do
  version "1.0"
  sha256 "8d015e1f736a7873a81b50dc52dc8e2bd8babffd8026410e5ce9d0e45ef89669"

  url "https://mirror.cs.uchicago.edu/fawkes/files/nightshade/Nightshade-#{version}-m1.dmg"
  name "Nightshade"
  desc "Tool that makes images unsuitable for AI model training"
  homepage "https://nightshade.cs.uchicago.edu/index.html"

  livecheck do
    url "https://nightshade.cs.uchicago.edu/downloads.html"
    regex(/Nightshade[._-]v?(\d+(?:\.\d+)+)[._-]m1\.dmg/i)
  end

  depends_on arch: :arm64

  app "Nightshade.app"

  # This is shared with the glaze cask
  zap trash: "~/.glaze"
end
