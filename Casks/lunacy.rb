cask "lunacy" do
  version "8.7.2"
  sha256 "4884f7fe3c5786abf069e3b6c2fb8e8b7395d8054b47d2a9b95af977db9cbab5"

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
