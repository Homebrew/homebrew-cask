cask "phd2" do
  version "2.6.14"

  on_ventura :or_older do
    sha256 "3d098cc6ccaa7ddf5040e51ca9f423647fe167948d7d92bece456fa207491b7f"

    url "https://openphdguiding.org/PHD2-#{version}-OSX-64.zip"

    livecheck do
      url "https://openphdguiding.org/downloads/"
      regex(/href=.*?PHD2[._-]v?(\d+(?:\.\d+)+)-OSX-64\.zip/i)
    end
  end
  on_sonoma :or_newer do
    sha256 "11f324ea4154508419f14215605972278c2adef6f91634f03e36aa8c2e92aa56"

    url "https://openphdguiding.org/PHD2-#{version}-OSX-64-sonoma+.zip"

    livecheck do
      url "https://openphdguiding.org/downloads/"
      regex(/href=.*?PHD2[._-]v?(\d+(?:\.\d+)+)-OSX-64-sonoma\+\.zip/i)
    end
  end

  name "PHD2"
  desc "Telescope guiding software"
  homepage "https://openphdguiding.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "PHD2.app"

  zap trash: [
    "~/Documents/PHD2",
    "~/Library/Preferences/org.openphdguiding.phd2.plist",
    "~/Library/Saved Application State/org.openphdguiding.phd2.savedState",
  ]
end
