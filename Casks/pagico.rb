cask "pagico" do
  version "9.5.20200825"
  sha256 "69c654db8729472a2fbf9b0d7b8d6d058b41758da78487f0c883af5ac2f5589a"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
