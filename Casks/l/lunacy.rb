cask "lunacy" do
  version "12.3"
  sha256 "a997645000045d023a7b87786d56da5555a3fffa685780d97f6102d118b73c89"

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
