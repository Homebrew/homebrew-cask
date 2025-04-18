cask "lunacy" do
  version "11.3"
  sha256 "ebda91fe8fd86564b3ee9b1b498979f2b5e74c6e1594fb550831956e87fd9c48"

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
