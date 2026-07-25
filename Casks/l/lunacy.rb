cask "lunacy" do
  version "14.1"
  sha256 "451097a530421ece04b10a2b5100da8f02dc45497f8b969596b7620100d53509"

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
