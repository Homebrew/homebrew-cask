cask "lunacy" do
  version "9.0.9"
  sha256 "15aa7ca23b6bc767eab2d9e049c662c6d38312a58efcc437ce255157d39abdc3"

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
