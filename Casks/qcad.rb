cask "qcad" do
  version "3.27.5"

  if Hardware::CPU.intel?
    if MacOS.version <= :high_sierra
      sha256 "589a84168c38bf57435441511b19fa081b622e009719c4be7cc1385b7dc55eeb"
      url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"

      livecheck do
        url "https://www.qcad.org/en/download"
        regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]10\.10[._-]10\.13\.dmg/i)
      end
    else
      sha256 "faf82b51897fe6d50380ef0dac094633d59a6afdf195bc2c8d0946773121bdd8"
      url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-12.dmg"

      livecheck do
        url "https://www.qcad.org/en/download"
        regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]10\.14[._-]12\.dmg/i)
      end
    end
  else
    sha256 "93833ed0d950ceae4a5a693fda65ae6d3212371d543b33e2a4434e4077a558e8"
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
