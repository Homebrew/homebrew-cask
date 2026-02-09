cask "lunacy" do
  version "12.1"
  sha256 "383695c0e1613f6543503e0996e9588c70aa7f0bfe3898fa2d41cc362dca6131"

  url "https://lcdn.icons8.com/setup/Lunacy_#{version}.dmg"
  name "Lunacy"
  desc "Graphic design software"
  homepage "https://icons8.com/lunacy"

  livecheck do
    url "https://lunacy.docs.icons8.com/release-notes/"
    regex(/Lunacy[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "Lunacy.app"

  zap trash: "~/.local/share/Icons8/Lunacy"
end
