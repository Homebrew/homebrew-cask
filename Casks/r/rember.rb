cask "rember" do
  version "0.3.7b"
  sha256 :no_check

  url "https://www.kelleycomputing.net/downloads/Rember.dmg"
  name "Rember"
  homepage "https://www.kelleycomputing.net/rember/"

  deprecate! date: "2024-08-25", because: :unmaintained

  app "Rember.app"

  caveats do
    requires_rosetta
  end
end
