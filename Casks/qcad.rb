cask "qcad" do
  arch arm: "11-12-arm64", intel: "10.14-12"

  version "3.27.9"

  on_high_sierra :or_older do
    sha256 "589a84168c38bf57435441511b19fa081b622e009719c4be7cc1385b7dc55eeb"

    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  end
  on_mojave :or_newer do
    sha256 arm:   "5f4340e2feb72699b87dbaf8cd8708f54a0cb44874516fdcf21b36fc5a1fb269",
           intel: "cf8578789a17b7f4a550646063e6a12634440b20172f1e21b9cd260b176a4e92"

    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-#{arch}.dmg"
  end

  name "QCAD"
  desc "Free, open source application for computer aided drafting in 2D"
  homepage "https://www.qcad.org/"

  livecheck do
    url "https://www.qcad.org/en/download"
    regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]#{arch}\.dmg/i)
  end

  app "QCAD.app"
end
