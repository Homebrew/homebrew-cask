cask "qcad" do
  version "3.27.6"

  if Hardware::CPU.intel?
    if MacOS.version <= :high_sierra
      sha256 "589a84168c38bf57435441511b19fa081b622e009719c4be7cc1385b7dc55eeb"
      url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"

      livecheck do
        url "https://www.qcad.org/en/download"
        regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]10\.10[._-]10\.13\.dmg/i)
      end
    else
      sha256 "b3861329672b1a44d72de8fe02cc696a955dad6cd7c1cd18da9e064b7ef0f816"
      url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-12.dmg"

      livecheck do
        url "https://www.qcad.org/en/download"
        regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]10\.14[._-]12\.dmg/i)
      end
    end
  else
    sha256 "a49ffa3adf3087ad9ac59de7fc54c7ea5ef131d6ca2950265916bacc86d3c405"
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
