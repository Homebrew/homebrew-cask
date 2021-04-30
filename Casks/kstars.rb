cask "kstars" do
  version "3.5.2"
  sha256 "dcf6df488efea55d8423ea7e76b54f12643ae4555a8b12224510c6ab27ce26df"

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg",
      verified: "indilib.org/jdownloads/kstars/"
  name "KStars"
  homepage "https://edu.kde.org/kstars/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/kstars-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "kstars.app"
end
