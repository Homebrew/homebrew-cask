cask "qcad" do
  version "3.27.1"

  if Hardware::CPU.intel?
    if MacOS.version <= :high_sierra
      sha256 "589a84168c38bf57435441511b19fa081b622e009719c4be7cc1385b7dc55eeb"
      url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"

      livecheck do
        url "https://www.qcad.org/en/download"
        regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]10\.10[._-]10\.13\.dmg/i)
      end
    else
      sha256 "e9fd85ac2123c5e531f78e2c870b587d16a07ab6ef8e6a019c9b74115c9560d3"
      url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-12.dmg"

      livecheck do
        url "https://www.qcad.org/en/download"
        regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]10\.14[._-]12\.dmg/i)
      end
    end
  else
    sha256 "8b74a4997f4c36e73ca88f15580183ce2a25cb48066763f9929174b4723a20fa"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-11-12-arm64.dmg"

    livecheck do
      url "https://www.qcad.org/en/download"
      regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]11[._-]12[._-]arm64\.dmg/i)
    end
  end

  name "QCAD"
  desc "Free, open source application for computer aided drafting in 2D"
  homepage "https://www.qcad.org/"

  app "QCAD.app"
end
