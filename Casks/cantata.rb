cask "cantata" do
  version "2.3.2"
  sha256 "c9eb8a1102d0a68cafc93f22df73445b8f69706f3322285f9a2f623a28df0176"

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  name "Cantata"
  desc "Qt5 Graphical MPD Client"
  homepage "https://github.com/cdrummond/cantata"

  # We need to check all releases since not all releases are for macOS.
  livecheck do
    url "https://github.com/CDrummond/cantata/releases"
    strategy :page_match
    regex(%r{href=.*?/Cantata[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "Cantata.app"
end
