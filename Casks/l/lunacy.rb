cask "lunacy" do
  version "10.11"
  sha256 "fb08fc2dc5ec63c579f21be3068c8833eb0d6fe15e8e1de457257c537d9b3320"

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
