cask "qcad" do
  arch arm: "11-12-arm64", intel: "10.14-12"

  version "3.27.7"
  sha256 arm:   "e4c89ee3a8d34f757f3464791626c51d314c659cba22800944bd1f16ef009bf7",
         intel: "c0e261d0577625d9e48a3cd1fa8c71e5e9b180117bfc54dcaf23a204561adf2e"

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
