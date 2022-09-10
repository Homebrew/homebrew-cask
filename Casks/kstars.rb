cask "kstars" do
  version "3.6.0"
  sha256 "57b385e1d4dba46315b74e85566689bd1a69331be10c816b671c9d63c822c1b7"

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg",
      verified: "indilib.org/jdownloads/kstars/"
  name "KStars"
  desc "Astronomy software"
  homepage "https://edu.kde.org/kstars/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/kstars-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "kstars.app"
end
