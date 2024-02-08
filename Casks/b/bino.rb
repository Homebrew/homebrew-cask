cask "bino" do
  version "1.6.6"
  sha256 "31f0c7590511c9c5bfb92f488de82565bdc4c945b934a1e8cd40a110beb49fd5"

  url "http://devernay.free.fr/hacks/bino/Bino-#{version}-OSX-Mavericks-GPL.zip",
      verified: "devernay.free.fr/hacks/bino/"
  name "Bino"
  desc "Video player"
  homepage "https://bino3d.org/"

  livecheck do
    url "http://devernay.free.fr/hacks/bino/"
    regex(/href=.*?Bino-(\d+(?:\.\d+)+)-OSX-Mavericks-GPL\.zip/i)
  end

  app "Bino.app"
end
