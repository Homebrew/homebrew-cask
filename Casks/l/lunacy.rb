cask "lunacy" do
  version "15.0"
  sha256 "a7e886fb5096521646b1c2f8ba4cee733fa58c17d866e6260eca78d90b58aab8"

  url "https://lcdn.icons8.com/setup/Lunacy_#{version}.dmg"
  name "Lunacy"
  desc "Graphic design software"
  homepage "https://icons8.com/lunacy"

  livecheck do
    url "https://lunacy.docs.icons8.com/release-notes/"
    regex(/Lunacy[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :monterey

  app "Lunacy.app"

  zap trash: "~/.local/share/Icons8/Lunacy"
end
