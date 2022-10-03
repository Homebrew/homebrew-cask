cask "kstars" do
  version "3.6.1"
  sha256 "c654f6cbc24b9cdc0d713c5bac7ed3dcfe4e7554ac43a331e7b9039c734b623f"

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
