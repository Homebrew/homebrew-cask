cask "ionic-lab" do
  version "0.29.1"
  sha256 :no_check

  url "https://ionic-io-assets.s3.amazonaws.com/labs/IonicLab.dmg",
      verified: "ionic-io-assets.s3.amazonaws.com/"
  name "IonicLab"
  homepage "https://lab.ionic.io/"

  app "Ionic Lab.app"

  caveats do
    discontinued
  end
end
