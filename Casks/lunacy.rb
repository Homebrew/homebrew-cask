cask "lunacy" do
  version "9.1.0"
  sha256 "d037d03508a5c6a788ee5a7f4e69ab768a1f7031f6e711b26222b089fba35892"

  url "https://lcdn.icons8.com/setup/Lunacy_#{version}.dmg"
  name "Lunacy"
  desc "Graphic design software"
  homepage "https://icons8.com/lunacy"

  livecheck do
    url "https://docs.icons8.com/release-notes/"
    regex(/Lunacy[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Lunacy.app"

  zap trash: "~/.local/share/Icons8/Lunacy"
end
