cask "pagico" do
  version "9.6.20201113"
  sha256 "06c204b30d6ee20980c55c590d2004b1637de9e451ed58c26b7249b8dfd43a96"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
