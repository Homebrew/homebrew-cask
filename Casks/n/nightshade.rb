cask "nightshade" do
  version "1.0.2"
  sha256 "d58c591bbcf4efde3c5e683658d1dde601c8bb4664e17120c64b3ffcaba0a769"

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
