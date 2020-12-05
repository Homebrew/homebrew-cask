cask "pagico" do
  version "9.7.20201204"
  sha256 "4286611471cddf7ba8e6fa5a434ffa3b3dd66a9737ee7fb390c035787c4e14ae"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
