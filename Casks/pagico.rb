cask "pagico" do
  version "9.5.20200831"
  sha256 "b1dec830d56de505abf35c74a3b699b8f18a296346071e09066198094242d91a"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
