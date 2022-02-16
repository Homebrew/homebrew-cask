cask "powerphotos" do
  if MacOS.version <= :yosemite
    version "1.0.6"
    sha256 "927c1095858d259b9469c86d20ce39cf0bfc350ad0b64ae8ba0ca0557b632305"
    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  elsif MacOS.version <= :el_capitan
    version "1.2.3"
    sha256 "b07eb9f8801fb397d55e3dd7e0569dbef5d3265debaf3ee68247062901d93fcb"
    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  elsif MacOS.version <= :sierra
    version "1.4.2"
    sha256 "ed9be64f4cb5a3d3848ad5177947bd8cd33e36846ea36266ef9d4d7b46813538"
    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  elsif MacOS.version <= :high_sierra
    version "1.6.4"
    sha256 "e7c7d5970b734827a5f112029491d2d97f9a6bb318f457893905718bea6b595a"
    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  else
    version "1.9.10,1790"
    sha256 :no_check
    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos.zip"
  end

  name "PowerPhotos"
  desc "Tool to organize photo libraries"
  homepage "https://www.fatcatsoftware.com/powerphotos/"

  livecheck do
    url "https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "PowerPhotos.app"
end
