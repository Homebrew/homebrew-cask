cask "lunacy" do
  version "11.6"
  sha256 "337682fd002a89cff8f09f0ac21288a3a81d8a14f0b8760e2cb0928bda99420a"

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
