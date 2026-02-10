cask "lunacy" do
  version "12.2"
  sha256 "92d638bfdea954f3ab947bc691456e180cb0c2cab145362dccbe7780e6a1e153"

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
