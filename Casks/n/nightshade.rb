cask "nightshade" do
  version "1.0.1"
  sha256 "c00482860846b3b7cf0e0b6a445795296e55e5fec7167f9a2b6d65fbf05d36c6"

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
