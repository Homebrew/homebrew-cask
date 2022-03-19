cask "bowtie" do
  version "1.5,1500"
  sha256 "d8406b066851c0730ca052036bedd5ded82019403de1fd58b579da34cfa4a948"

  url "http://bowtieapp.com/bowtie-#{version.csv.first}.zip"
  name "Bowtie"
  desc "Control your music with customizable shortcuts"
  homepage "http://bowtieapp.com/"

  livecheck do
    url "http://updates.13bold.com/appcasts/bowtie"
    strategy :sparkle
  end

  app "Bowtie #{version.csv.first}/Bowtie.app"
end
