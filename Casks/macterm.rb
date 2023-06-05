cask "macterm" do
  version "4.1.0"
  sha256 :no_check

  url "https://www.macterm.net/updates/macterm-#{version}.dmg"
  name "MacTerm"
  homepage "https://www.macterm.net/"

  livecheck do
    url "https://www.macterm.net/updates/daily.html"
    regex(/macterm[._-](\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: "<= :mojave"

  app "MacTerm.app"
end
