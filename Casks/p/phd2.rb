cask "phd2" do
  version "2.6.13"

  on_ventura :or_older do
    sha256 "3d098cc6ccaa7ddf5040e51ca9f423647fe167948d7d92bece456fa207491b7f"

    url "https://openphdguiding.org/PHD2-#{version}-OSX-64.zip"

    livecheck do
      url "https://openphdguiding.org/downloads/"
      regex(/href=.*?PHD2[._-]v?(\d+(?:\.\d+)+)-OSX-64\.zip/i)
    end
  end
  on_sonoma :or_newer do
    sha256 "c8ea80bfaa57d7092e7b8ce67f6b905a768bf0b9e810f3c1faa065072feace2d"

    url "https://openphdguiding.org/PHD2-#{version}-OSX-64-sonoma+.zip"

    livecheck do
      url "https://openphdguiding.org/downloads/"
      regex(/href=.*?PHD2[._-]v?(\d+(?:\.\d+)+)-OSX-64-sonoma\+\.zip/i)
    end
  end

  name "PHD2"
  desc "Telescope guiding software"
  homepage "https://openphdguiding.org/"

  app "PHD2.app"
end
