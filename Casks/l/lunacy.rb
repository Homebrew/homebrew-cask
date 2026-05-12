cask "lunacy" do
  version "14.0"
  sha256 "8d340e41fd386f9f949611127c85998d788d4716afbdc305a4214a81919bf2b2"

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
