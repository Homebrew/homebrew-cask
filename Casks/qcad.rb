cask "qcad" do
  arch arm: "11-12-arm64", intel: "10.14-12"

  version "3.27.8"
  sha256 arm:   "ca6caa224d007e184e4b48895117611b20e1b8d28e85e97be53cf54c4fac5a4e",
         intel: "418d5a29ee34b69643c65aa0dc43f0655db977ff6f6cc08a157a3ee87b4cb298"

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
