cask "nightshade" do
  version "1.1"
  sha256 "ce9df85dd4227763bb89505a275e3b0dba58452b8c86a9b4ceec159fca188e0a"

  url "https://webvault.cs.uchicago.edu/sandlab/fawkes/files/nightshade/Nightshade-#{version}-m1.dmg"
  name "Nightshade"
  desc "Tool that makes images unsuitable for AI model training"
  homepage "https://nightshade.cs.uchicago.edu/"

  livecheck do
    url "https://nightshade.cs.uchicago.edu/downloads.html"
    regex(/Nightshade[._-]v?(\d+(?:\.\d+)+)[._-]m1\.dmg/i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Nightshade.app"

  # This is shared with the glaze cask
  zap trash: "~/.glaze"
end
