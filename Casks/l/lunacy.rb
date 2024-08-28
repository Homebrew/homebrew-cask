cask "lunacy" do
  version "10.0.1"
  sha256 "a711c750d55c158bfaec8ee91de4e883bd4d478472cc44eacb0181192f4980ff"

  url "https://lcdn.icons8.com/setup/Lunacy_#{version}.dmg"
  name "Lunacy"
  desc "Graphic design software"
  homepage "https://icons8.com/lunacy"

  livecheck do
    url "https://lunacy.docs.icons8.com/release-notes/"
    regex(/Lunacy[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Lunacy.app"

  zap trash: "~/.local/share/Icons8/Lunacy"
end
