cask "qcad" do
  arch arm: "11-12-arm64", intel: "10.14-12"

  version "3.27.6"
  sha256 arm:   "a49ffa3adf3087ad9ac59de7fc54c7ea5ef131d6ca2950265916bacc86d3c405",
         intel: "b3861329672b1a44d72de8fe02cc696a955dad6cd7c1cd18da9e064b7ef0f816"

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-#{arch}.dmg"

  on_high_sierra :or_older do
    sha256 "589a84168c38bf57435441511b19fa081b622e009719c4be7cc1385b7dc55eeb"

    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
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
