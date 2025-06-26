cask "lunacy" do
  version "11.5"
  sha256 "29cd58047bedf491f36324787778a8a27f64e72a0d2cca3eb01bd2097cc7ff92"

  url "https://lcdn.icons8.com/setup/Lunacy_#{version}.dmg"
  name "Lunacy"
  desc "Graphic design software"
  homepage "https://icons8.com/lunacy"

  livecheck do
    url "https://lunacy.docs.icons8.com/release-notes/"
    regex(/Lunacy[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Lunacy.app"

  zap trash: "~/.local/share/Icons8/Lunacy"
end
