cask "lunacy" do
  version "11.1"
  sha256 "3aa4bc44af49ca83b6d62989f1b6fa1f476b1c828c179d9fdacb87f5b6484fbd"

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
