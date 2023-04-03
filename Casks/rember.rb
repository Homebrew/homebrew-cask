cask "rember" do
  version "0.3.7b"
  sha256 :no_check

  url "https://www.kelleycomputing.net/downloads/Rember.dmg"
  name "Rember"
  homepage "https://www.kelleycomputing.net/rember/"

  livecheck do
    url :homepage
    regex(/Rember\s*(?:<[^>]+>\s*<[^>]+>)?\s*v[._-](\d+(?:\.\d+)+b?)/i)
  end

  app "Rember.app"
end
